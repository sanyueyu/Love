package  
{  
    import flash.text.TextField;  
    import flash.utils.Timer;  
    import flash.events.TimerEvent;  
  
    public final class Typewriter  
    {  
        /* 声明静态变量和方法 */  
  
        private static var chars:Array; //字符串中的字符  
        private static var cLen:int; //字符串的长度  
        private static var tf:TextField; //写入字符串的文本  
        private static var timer:Timer; //写入每个字符之间的停顿  
        private static var i:int = 0; //用来计算已写入字符数量的变量  
  
        public function write(txt:String, txtField:TextField, time:Number):void  
        {  
            chars = txt.split(""); //将字符串拆分成一个字符数组  
            cLen = chars.length; //字符串长度  
            tf = txtField; //将函数中传递进的txtField值赋值给tf            
			timer = new Timer(time); //根据参数设置时间   
            timer.addEventListener(TimerEvent.TIMER, writeChar);  
            timer.start(); //开始 writing 函数  
        }  
  
        private function writeChar(e:TimerEvent):void  
        {  
			//trace(chars.length);
            tf.appendText(chars[i]); //每次该函数调用写入一个字符  
         	   i++; //统计写入的字符数  
  			//trace(chars.length);
            if(tf.length == cLen) //检查字符串是否完成  
            {  
                timer.stop();  
                timer.removeEventListener(TimerEvent.TIMER, writeChar); //清空timer  
                timer = null;  
            }  
        }  
    }  
}  