package com.min.util;

import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
public class ExcelUtil {
    public Workbook ExcelReader(MultipartFile file) throws IOException {
        final String extension = FilenameUtils.getExtension(file.getOriginalFilename()); // 3
        if (!extension.equals("xlsx") && !extension.equals("xls")) throw new IOException("엑셀파일만 업로드 해주세요.");
        return "xlsx".equals(extension) ? new XSSFWorkbook(file.getInputStream()) :
                new HSSFWorkbook(file.getInputStream());
    }
}
