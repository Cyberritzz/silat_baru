// timer.js
var var_start_timer = true;
var var_stop = false;
var interval = "";

var resume_time = function() {
  if (var_stop) {
    return false;
  }
  if (var_start_timer) {
    $('.btn-stop').html(' RESUME');
    var_start_timer = false;
  } else {
    var_start_timer = true;
    $('.btn-stop').html(' PAUSE');
  }
}

function stop_time() {
  var_stop = true;
  $(".waktu").html("00:00");
  clearInterval(interval);
}

function init_start(duration) {
  clearInterval(interval);
  var_stop = false;
  var_start_timer = true;
  start_time(duration);
}

function start_time(duration) {
  var timer = duration,
    minutes, seconds;

  interval = setInterval(function() {
    if (var_stop) {
      return false;
    }

    if (var_start_timer == false) {
      return false;
    }

    minutes = parseInt(timer / 60, 10);
    seconds = parseInt(timer % 60, 10);

    minutes = minutes < 10 ? "0" + minutes : minutes;
    seconds = seconds < 10 ? "0" + seconds : seconds;

    if (--timer < 0) {
      var_stop = true;
      $(".waktu").html("WAKTU HABIS");
      clearInterval(interval);
    } else {
      $(".waktu").html(minutes + ":" + seconds);
      // Mengirimkan waktu ke halaman lain menggunakan server-sent events
      sendTime(minutes, seconds);
    }
  }, 1000);

  // Mengirimkan waktu awal ke halaman lain saat inisialisasi
  sendTime(minutes, seconds);
}

function sendTime(minutes, seconds) {
  // Membuat objek event source untuk mengirimkan data ke halaman lain
  var eventSource = new EventSource("/send-time");

  // Mengirimkan data waktu ke halaman lain
  eventSource.onopen = function() {
    eventSource.send(JSON.stringify({ minutes: minutes, seconds: seconds }));
  }

  // Menutup event source setelah pengiriman data selesai
  eventSource.onmessage = function(event) {
    eventSource.close();
  }
}
