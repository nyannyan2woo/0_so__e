function createJobCards(jobs) {
    const container = document.getElementById("jobs-container");
    container.innerHTML = ""; // clear old jobs

    jobs.forEach(job => {
        const card = document.createElement("div");
        card.className = "service-card";
        const img = document.createElement("img");
        img.src = `images/${job.image || (job.name + ".png")}`;
        img.onerror = () => { img.style.display = "none"; }; // hide if not found
        card.appendChild(img);
        const label = document.createElement("span");
        label.innerText = job.label || job.name;
        card.appendChild(label);
        const status = document.createElement("span");
        status.id = `${job.name}-status`;
        status.className = "status none";
        status.innerText = "None";
        card.appendChild(status);
        const bar = document.createElement("div");
        bar.id = `${job.name}-bar`;
        bar.className = "status-bar bar-none";
        card.appendChild(bar);

        container.appendChild(card);
    });
}

function updateStatus(job, statusObj) {
    if (!statusObj) return;

    let statusElement = document.getElementById(job + "-status");
    let barElement = document.getElementById(job + "-bar");

    if (!statusElement || !barElement) return;

    statusElement.innerText = statusObj.label;
    statusElement.className = "status " + statusObj.css;
    barElement.className = "status-bar bar-" + statusObj.css;
}

window.addEventListener("message", function(event) {
    if (event.data.action === "toggle") {
        document.body.style.display = event.data.visible ? "block" : "none";

    } else if (event.data.action === "update") {
        document.getElementById("player-count").innerText = `${event.data.players}/${event.data.maxSlots}`;
        document.getElementById("player-id").innerText = event.data.playerId;

        if (event.data.job && event.data.job.name && event.data.job.grade) {
            document.getElementById("player-job").innerText = `${event.data.job.name} (${event.data.job.grade})`;
        } else {
            document.getElementById("player-job").innerText = "-";
        }

        if (event.data.uptime) {
            document.getElementById("server-uptime").innerText = event.data.uptime;
        }
        if (event.data.jobs && !document.getElementById(event.data.jobs[0].name + "-status")) {
            createJobCards(event.data.jobs);
        }
        if (event.data.jobs) {
            event.data.jobs.forEach(job => {
                updateStatus(job.name, event.data.jobStatuses[job.name]);
            });
        }
    }
});
