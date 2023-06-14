package com.example.patent.controller;


import com.example.patent.dto.DecisionDTO;
import com.example.patent.dto.PatentRequestDTO;
import com.example.patent.dto.ReportDTO;
import com.example.patent.model.Prijava;
import com.example.patent.service.PatentService;
import com.itextpdf.text.DocumentException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.xmldb.api.base.XMLDBException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.JAXBException;
import javax.xml.datatype.DatatypeConfigurationException;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping(path="patent")
public class PatentController {

    @Autowired
    private PatentService patentService;

    @PostMapping(value = "createRequest",produces = "application/xml", consumes = "application/xml")
    public void createRequest(@RequestBody PatentRequestDTO request) throws DatatypeConfigurationException, JAXBException, XMLDBException {
        System.out.println(request);
        this.patentService.createRequest(request);

    }

    @PostMapping(value ="handleRequest", consumes = "application/xml")
    public void handleRequest(@RequestBody DecisionDTO decisionDTO) throws DatatypeConfigurationException, JAXBException, XMLDBException {
        System.out.println(decisionDTO);
        patentService.createDecision(decisionDTO);

    }

    @GetMapping(value="getAll", produces= "application/xml")
    public ResponseEntity<List<Prijava>> getAll(){
        List<Prijava> trademarks = patentService.getAll();


        return new ResponseEntity<>(trademarks, HttpStatus.OK);

    }

    @GetMapping(value="getOne/{id}", produces = "application/xml")
    public ResponseEntity<Prijava> getOneById(@PathVariable String id){
        Prijava prijava = patentService.getOneById(id);
        return new ResponseEntity<>(prijava, HttpStatus.OK);
    }

    @GetMapping(value="getAllApproved", produces = MediaType.APPLICATION_XML_VALUE)
    public ResponseEntity<List<Prijava>> getAllApproved(){
        List<Prijava> trademarks = patentService.getAllApproved();

        return new ResponseEntity<>(trademarks, HttpStatus.OK);
    }

    @GetMapping(value="getAllUnanswered", produces = MediaType.APPLICATION_XML_VALUE)
    public ResponseEntity<List<Prijava>> getAllUnanswered(){
        List<Prijava> trademarks = patentService.getAllUnanswered();
        return new ResponseEntity<>(trademarks, HttpStatus.OK);
    }

    @PostMapping(value = "createDocuments/{id}")
    public void createDocuments(@PathVariable String id) throws DocumentException, IOException {

        patentService.createDocuments(id);
    }

    @PostMapping(value="report", consumes = MediaType.APPLICATION_XML_VALUE)
    public void generateReport(@RequestBody ReportDTO reportDTO) throws JAXBException, XMLDBException, DocumentException, FileNotFoundException {
        patentService.generateReport(reportDTO);
    }

    @GetMapping("/downloadPDF/{fileName}")
    public void downloadPDFResource(HttpServletRequest request, HttpServletResponse response, @PathVariable("fileName") String fileName) throws IOException {
        String path = "gen/" + fileName + ".pdf";
        File file = new File(path);
        if (file.exists()) {
            String mimeType = "application/pdf";
            response.setContentType(mimeType);
            response.setHeader("Content-Disposition", "inline; filename=\"" + file.getName() + "\"");
            response.setContentLength((int) file.length());
            InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
            FileCopyUtils.copy(inputStream, response.getOutputStream());
        }
    }

    @GetMapping("/downloadHTML/{fileName}")
    public void downloadHTMLResource(HttpServletRequest request, HttpServletResponse response, @PathVariable("fileName") String fileName) throws IOException {
        String path = "src/main/resources/data/gen/" + fileName;
        File file = new File(path);
        if (file.exists()) {
            String mimeType = "application/html";
            response.setContentType(mimeType);
            response.setHeader("Content-Disposition", "inline; filename=\"" + file.getName() + "\"");
            response.setContentLength((int) file.length());
            InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
            FileCopyUtils.copy(inputStream, response.getOutputStream());
        }
    }

    @GetMapping(value = "/search/{data}", produces = MediaType.APPLICATION_XML_VALUE)
    public ResponseEntity<List<Prijava>> search(@PathVariable String data) throws Exception {
        List<Prijava> zahtevi = patentService.search(data);
        return new ResponseEntity<>(zahtevi, HttpStatus.OK);
    }


}
