package com.xie.pojo;

public class Job {
    private Integer jobId;
    private String jobNo;
    private String jobName;

    public Job() {
    }

    public Job(Integer jobId, String jobNo, String jobName) {
        this.jobId = jobId;
        this.jobNo = jobNo;
        this.jobName = jobName;
    }

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public String getJobNo() {
        return jobNo;
    }

    public void setJobNo(String jobNo) {
        this.jobNo = jobNo;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    @Override
    public String toString() {
        return "Job{" +
                "jobId='" + jobId + '\'' +
                ", jobNo='" + jobNo + '\'' +
                ", jobName='" + jobName + '\'' +
                '}';
    }
}
