extern crate job_scheduler;
use job_scheduler::{Job, JobScheduler};
use std::process::Command;
use std::time::Duration;

fn main() {
    let mut agenda = JobScheduler::new();

    agenda.add(Job::new("* 1/240 * * * *".parse().unwrap(), || {
        Command::new("sh")
            .arg("-c")
            .arg("$HOME/.bin/kronicle-jobs")
            .spawn()
            .expect("Fail!");
        //println!("File created!");
    }));

    loop {
        agenda.tick();

        std::thread::sleep(Duration::from_millis(500));
    }
}
