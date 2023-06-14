package com.example.zig.dto;


import javax.xml.bind.annotation.XmlRootElement;
import java.util.Date;

@XmlRootElement(name = "report")
public class ReportDTO {

    public String startDate;
    public String endDate;

}
