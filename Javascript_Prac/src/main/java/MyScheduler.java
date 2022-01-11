import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.impl.JobDetailImpl;
import org.quartz.impl.StdSchedulerFactory;

public class MyScheduler {
	MyScheduler() throws SchedulerException{
		SchedulerFactory sf = new StdSchedulerFactory();
		Scheduler s = sf.getScheduler();
		
		JobDetail job1 = new JobDetailImpl(
				"myjob1", "myGropu1", Myjob.class);
		Trigger trigger1 = new CrontriggerImpl(
				"myTrigger1", "myGroup1", "0/10 * * * *?");
		s.scheduleJob(job1, trigger1);
		s.start();	 //스케줄러 실행시작
					//cf)스케줄러 실행중지. s.shutdown();
	}
	
	
	public static void main(String[] args) throws SchedulerException {
		new MyScheduler();
	}

}
