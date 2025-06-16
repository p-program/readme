---
author: "Zeusro"
title: "How To Do In Java"
date: 2020-03-20T13:53:29+08:00
draft: false
feature: "image/post/HowToDoInJava/java.jpg"
---

The point is to break the rule everyday.

## Use Java 8 till the world ends

2032：I still use Java 8.

![](/image/post/HowToDoInJava/java-release.png)

## Write once,run nowwhere

![](/image/post/HowToDoInJava/write-once.jpg)

## Use maven rather than gradle, install tons of dependencies even you just wanna hello world

```xml
<!-- https://mvnrepository.com/artifact/org.springframework/spring-context -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-context</artifactId>
    <version>5.2.4.RELEASE</version>
</dependency>
<!-- https://mvnrepository.com/artifact/org.springframework/spring-core -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-core</artifactId>
    <version>5.2.4.RELEASE</version>
</dependency>
<!-- https://mvnrepository.com/artifact/org.springframework/spring-beans -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-beans</artifactId>
    <version>5.2.4.RELEASE</version>
</dependency>
<!-- https://mvnrepository.com/artifact/org.springframework/spring-web -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-web</artifactId>
    <version>5.2.4.RELEASE</version>
</dependency>
<!-- https://mvnrepository.com/artifact/org.springframework/spring-webmvc -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-webmvc</artifactId>
    <version>5.2.4.RELEASE</version>
</dependency>
<!-- https://mvnrepository.com/artifact/org.springframework/spring-test -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-test</artifactId>
    <version>5.2.4.RELEASE</version>
    <scope>test</scope>
</dependency>
<!-- https://mvnrepository.com/artifact/org.springframework/spring-aop -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-aop</artifactId>
    <version>5.2.4.RELEASE</version>
</dependency>
<!-- https://mvnrepository.com/artifact/org.springframework/spring -->
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring</artifactId>
    <version>5.2.3.RELEASE</version>
    <type>pom</type>
</dependency>

```

## JVM is great！

![](/image/post/HowToDoInJava/jvm.png)


## JVM optimization

![](/image/post/HowToDoInJava/jvm-memory.jpg)

```bash
/acs/user/monitoragent/jre/bin/java -server 
-Xmx128m 
-Xms128m 
-Xmn70m 
-XX:SurvivorRatio=10 
-XX:PermSize=25m 
-XX:MaxPermSize=30m 
-XX:+DisableExplicitGC 
-XX:+UseConcMarkSweepGC 
-XX:+CMSParallelRemarkEnabled 
-XX:+UseCMSCompactAtFullCollection 
-XX:+CMSClassUnloadingEnabled 
-XX:LargePageSizeInBytes=128m 
-XX:+UseFastAccessorMethods 
-XX:+UseCMSInitiatingOccupancyOnly 
-XX:CMSInitiatingOccupancyFraction=70 
-XX:+UseParNewGC 
-verbose:gc 
-Xloggc:/acs/monitor/system/monitoragent/logs/gc.log 
-XX:+PrintGCDetails 
-XX:+PrintGCDateStamps 
-Duser.timezone=GMT+8 
-Djava.endorsed.dirs= 
-classpath /acs/user/monitoragent/lib:/acs/user/monitoragent/lib/aliyun-openservices-sls-v0.3-inner-0.1.0.jar:/acs/user/monitoragent/lib/aliyun-openservices-with-mqs.1.0.12.jar:/acs/user/monitoragent/lib/commons-beanutils-1.8.3.jar:/acs/user/monitoragent/lib/commons-codec-1.4.jar:/acs/user/monitoragent/lib/commons-collections-3.2.1.jar:/acs/user/monitoragent/lib/commons-digester-1.8.jar:/acs/user/monitoragent/lib/commons-httpclient-3.1.jar:/acs/user/monitoragent/lib/commons-lang-2.6.jar:/acs/user/monitoragent/lib/commons-lang3-3.1.jar:/acs/user/monitoragent/lib/commons-logging-1.0.4.jar:/acs/user/monitoragent/lib/commons-validator-1.4.0.jar:/acs/user/monitoragent/lib/diamond-client-3.6.7.jar:/acs/user/monitoragent/lib/diamond-utils-3.1.3.jar:/acs/user/monitoragent/lib/ezmorph-1.0.6.jar:/acs/user/monitoragent/lib/fastjson-1.2.41.jar:/acs/user/monitoragent/lib/hamcrest-core-1.1.jar:/acs/user/monitoragent/lib/httpclient-4.2.1.jar:/acs/user/monitoragent/lib/httpcore-4.2.1.jar:/acs/user/monitoragent/lib/jackson-core-lgpl-1.9.6.jar:/acs/user/monitoragent/lib/jackson-mapper-lgpl-1.9.6.jar:/acs/user/monitoragent/lib/jdom-1.1.jar:/acs/user/monitoragent/lib/json-lib-2.4-jdk15.jar:/acs/user/monitoragent/lib/junit-4.10.jar:/acs/user/monitoragent/lib/log4j-1.2.17.jar:/acs/user/monitoragent/lib/mysql-connector-java-5.1.25.jar:/acs/user/monitoragent/lib/netty-all-4.0.36.Final.jar:/acs/user/monitoragent/lib/nginx.agent.jar:/acs/user/monitoragent/lib/ons-api-1.1.5.jar:/acs/user/monitoragent/lib/ons-client-1.1.5.jar:/acs/user/monitoragent/lib/protobuf-java-2.4.1.jar:/acs/user/monitoragent/lib/rocketmq-client-3.6.4.jar:/acs/user/monitoragent/lib/rocketmq-common-3.6.4.jar:/acs/user/monitoragent/lib/rocketmq-remoting-3.6.4.jar:/acs/user/monitoragent/lib/slf4j-api-1.7.5.jar:/acs/user/monitoragent/lib/slf4j-log4j12-1.7.5.jar:/acs/user/monitoragent/lib/test.junit-4.8.1.jar:/acs/user/monitoragent/lib/test.junit.hamcrest-1.1.jar: -Dagent.home=/acs/user/monitoragent com.alibaba.ace.nginx.agent.Startup /acs/user/monitoragent/conf
```
More options, more KPI, more salary jobs! 

## Object boxing and unboxing

```java
  public static void f() {
        String[] a = new String[2];
        Object[] b = a;
        a[0] = "hi";
        b[1] = Integer.valueOf(42);
    }
```    

## Return in finally

```java
    static String a() {
        try {
            throw new RuntimeException("a");
        } catch (RuntimeException e) {
            return "d";
        } catch (Exception e) {
            return "b";
        } finally {
            return "c";
        }
//        return "d";
    }
```

## Use ==

```java
        String s1 = new String("cccc");
        String s2 = new String("cccc");
        if(s1==s2){
            goto hell;
        }

        Integer a =127;
        Integer b = 127;
        System.out.println(a==b);//true

        Integer a1 = 128;
        Integer b1 = 128;
        System.out.println(a1==b1);//false
```

## Use / as much as you can

```java
import java.util.Scanner;
public class Exercise1 {
       public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        System.out.print("Input an integer number: ");
        int n = in.nextInt();  		
        if (n <= 0) {
            System.out.print("Input a correct number.");
        }
		int x = 0;
        while (n != 1) {
            if (n % 5 == 0) {
                n /= 5;
            } else if (n % 3 == 0) {
                n /= 3;
            } else if (n % 2 == 0) {
                n /= 2;
            } else {
                System.out.print("It is not an ugly number.");
				x = 1;
				break;
            }
        }
        if (x==0)
		System.out.print("It is an ugly number.");
		System.out.print("\n");
	    }
}
```

![](/image/post/HowToDoInJava/java-number-exercise-1.png)

## Object.toString is awsome!

```java
String[] words = { “Hello”, “World” };
System.out.println(words); //[Ljava.lang.String;@45ee12a7
```

## Save file twice for guarantee

```java
saveFile(fileName);
saveFile(fileName);
```

## Sleep for further optimization

```java
// After our customers pay the last bill,then we will comment this.
Thread.sleep(30000)；
```

## NullPointerException is your best friend!

```java
{
    Integer n = null;
    if (n == 0) {
        System.out.println("n == 0");
    }
}
```

## Dreaming about generics

```java
public class Vector<E> {
	private E e = new E(); // you're dreaming
    private E[] e = new E[10]; // you're dreaming
}
```

## Try, Try, Try

```java
    public byte[] download(String url) {
        HttpGet httpGet = new HttpGet(url);
        try (CloseableHttpResponse response = client.execute(httpGet)) {
            if (404 == response.getStatusLine().getStatusCode()) {
                return null;
            }
            try (InputStream inputStream = response.getEntity().getContent()) {
                return readInputStream(inputStream);
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            httpGet = null;
        }
        return null;
    }
```

## Love my wife like crazy

```java
package com.zeusro;
import java.util.Date;

public interface Wife {

    public void want(Float money);

    public void want(Float money,Object love);

    public void want(Object love,Float money);

    public void want(Object love, Float money, Date time);

}
```

## More code lines,more money

The 40-year-old Kobe Bryant still wakes up before the sun to go to the gym at 4 a.m.

One day he asked IT engineers around him："Have you ever seen LA at 4 a.m. ?"

Go senior backend engineer : NO!

C# senior backend engineer : NO!

Kotlin senior engineer : NO!

Java senior backend engineer : YES!I am still busy on generating get and set.

```java
import java.util.Arrays;

public class DataExample {
  private final String name;
  private int age;
  private double score;
  private String[] tags;
  
  public DataExample(String name) {
    this.name = name;
  }
  
  public String getName() {
    return this.name;
  }
  
  void setAge(int age) {
    this.age = age;
  }
  
  public int getAge() {
    return this.age;
  }
  
  public void setScore(double score) {
    this.score = score;
  }
  
  public double getScore() {
    return this.score;
  }
  
  public String[] getTags() {
    return this.tags;
  }
  
  public void setTags(String[] tags) {
    this.tags = tags;
  }
  
  @Override public String toString() {
    return "DataExample(" + this.getName() + ", " + this.getAge() + ", " + this.getScore() + ", " + Arrays.deepToString(this.getTags()) + ")";
  }
  
  protected boolean canEqual(Object other) {
    return other instanceof DataExample;
  }
  
  @Override public boolean equals(Object o) {
    if (o == this) return true;
    if (!(o instanceof DataExample)) return false;
    DataExample other = (DataExample) o;
    if (!other.canEqual((Object)this)) return false;
    if (this.getName() == null ? other.getName() != null : !this.getName().equals(other.getName())) return false;
    if (this.getAge() != other.getAge()) return false;
    if (Double.compare(this.getScore(), other.getScore()) != 0) return false;
    if (!Arrays.deepEquals(this.getTags(), other.getTags())) return false;
    return true;
  }
  
  @Override public int hashCode() {
    final int PRIME = 59;
    int result = 1;
    final long temp1 = Double.doubleToLongBits(this.getScore());
    result = (result*PRIME) + (this.getName() == null ? 43 : this.getName().hashCode());
    result = (result*PRIME) + this.getAge();
    result = (result*PRIME) + (int)(temp1 ^ (temp1 >>> 32));
    result = (result*PRIME) + Arrays.deepHashCode(this.getTags());
    return result;
  }
  
  public static class Exercise<T> {
    private final String name;
    private final T value;
    
    private Exercise(String name, T value) {
      this.name = name;
      this.value = value;
    }
    
    public static <T> Exercise<T> of(String name, T value) {
      return new Exercise<T>(name, value);
    }
    
    public String getName() {
      return this.name;
    }
    
    public T getValue() {
      return this.value;
    }
    
    @Override public String toString() {
      return "Exercise(name=" + this.getName() + ", value=" + this.getValue() + ")";
    }
    
    protected boolean canEqual(Object other) {
      return other instanceof Exercise;
    }
    
    @Override public boolean equals(Object o) {
      if (o == this) return true;
      if (!(o instanceof Exercise)) return false;
      Exercise<?> other = (Exercise<?>) o;
      if (!other.canEqual((Object)this)) return false;
      if (this.getName() == null ? other.getValue() != null : !this.getName().equals(other.getName())) return false;
      if (this.getValue() == null ? other.getValue() != null : !this.getValue().equals(other.getValue())) return false;
      return true;
    }
    
    @Override public int hashCode() {
      final int PRIME = 59;
      int result = 1;
      result = (result*PRIME) + (this.getName() == null ? 43 : this.getName().hashCode());
      result = (result*PRIME) + (this.getValue() == null ? 43 : this.getValue().hashCode());
      return result;
    }
  }
}
```

```java
Set<Integer> s = new HashSet<>();
s.add(1);
s.add(2);
s.add(3);
s.add(4);
```

## Thanks

1. https://www.w3resource.com/java-exercises/numbers/java-number-exercise-1.php
1. https://blog.csdn.net/qq_36785612/article/details/86499466
1. https://blog.csdn.net/u011928958/article/details/74999256
1. https://www.jianshu.com/p/bbf8c28101e9
1. https://zhuanlan.zhihu.com/p/29010605
1. https://en.wikipedia.org/wiki/Java_version_history