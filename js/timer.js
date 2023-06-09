var varStartTimer = true;
var varStop = false;
var interval = "";

function resumeTime() {
  if (varStop) {
    return false;
  }
  if (varStartTimer) {
    $('.btn-stop').html(' RESUME');
    varStartTimer = false;
  } else {
    varStartTimer = true;
    $('.btn-stop').html(' PAUSE');
  }
}

function stopTime() {
  varStop = true;
  $(".waktu").html("00:00");
  clearInterval(interval);
}

function initStart() {
  var durationInput = document.getElementById("durationInput");
  var duration = parseInt(durationInput.value);

  if (isNaN(duration) || duration <= 0) {
    alert("Please enter a valid duration in seconds.");
    return;
  }

  clearInterval(interval);
  varStop = false;
  varStartTimer = true;
  startTime(duration);
}

function startTime(duration) {
  var timer = duration,
    minutes, seconds;

  interval = setInterval(function() {
    if (varStop) {
      return false;
    }

    if (varStartTimer === false) {
      return false;
    }

    minutes = parseInt(timer / 60, 10);
    seconds = parseInt(timer % 60, 10);

    minutes = minutes < 10 ? "0" + minutes : minutes;
    seconds = seconds < 10 ? "0" + seconds : seconds;

    if (--timer < 0) {
      varStop = true;
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
