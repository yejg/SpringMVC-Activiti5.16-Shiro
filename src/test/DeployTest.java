package test;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.repository.Deployment;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.zip.ZipInputStream;

/**
 * @author yejg
 * @since 2020-06-11
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:/applicationContext.xml", "classpath*:/springMVC.xml" })
public class DeployTest {
    @Autowired
    ProcessEngine processEngine;

    @Test
    public void deploymentProcessDefinition_inputStream() throws FileNotFoundException {
        deploy("CountSalary","E:\\Git_OpenSource\\SpringMVC-Activiti5.16-Shiro\\resources\\deploy\\CountSalary.zip");
    }

    private void deploy(String name,String zipFile) throws FileNotFoundException {
        FileInputStream inputStream = new FileInputStream(new File(zipFile));
        ZipInputStream zipInputStream = new ZipInputStream(inputStream);
        Deployment deployment = processEngine.getRepositoryService()//与流程定义和部署对象相关的Service
                .createDeployment()//创建一个部署对象
                .name(name)
                .addZipInputStream(zipInputStream)
                .deploy();//完成部署
        System.out.println("部署ID：" + deployment.getId());//
        System.out.println("部署名称：" + deployment.getName());//
    }

}
