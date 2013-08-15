package 
{

	import flash.display.MovieClip;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.text.TextFieldAutoSize;
	import flash.events.*;
	import flash.utils.Timer;

	public class dzas extends MovieClip
	{
		var txt:TextField=new TextField();
		var txt_k:TextFormat=new TextFormat();
		var myt:String=new String();
		var i:Number = 0;

		public function dzas()
		{
			myt = "为何ARGB数值分离时，Alpha却无法正常做位移位 标题栏里的打字效果 特效 网页特效 flash特效 脚本代码 js特效为何ARGB数值分离时，Alpha却无法正常做位移位 标题栏里的打字效果 特效 网页特效 flash特效 脚本代码 js特效为何ARGB数值分离时，Alpha却无法正常做位移位 标题栏里的打字效果 特效 网页特效 flash特效 脚本代码 js特效为何ARGB数值分离时，Alpha却无法正常做位移位 标题栏里的打字效果 特效 网页特效 flash特效 脚本代码 js特效为何ARGB数值分离时，Alpha却无法正常做位移位 标题栏里的打字效果 特效 网页特效 flash特效 脚本代码 js特效为何ARGB数值分离时，Alpha却无法正常做位移位 标题栏里的打字效果 特效 网页特效 flash特效 脚本代码 js特效为何ARGB数值分离时，Alpha却无法正常做位移位 标题栏里的打字效果 特效 网页特效 flash特效 脚本代码 js特效为何ARGB数值分离时，Alpha却无法正常做位移位 标题栏里的打字效果 特效 网页特效 flash特效 脚本代码 js特效。";
			txt_k.color = 0xff0000;
			txt_k.size = 15;
			txt.defaultTextFormat = txt_k;
			var timer:Timer = new Timer(30,myt.length);

			timer.addEventListener(TimerEvent.TIMER,abb);
			timer.start();

		}
		public function abb(event)
		{

			txt.selectable = false;
			txt.appendText(myt.charAt(i));
			txt.autoSize = TextFieldAutoSize.LEFT;//控制文本字段的自动大小调整和对齐
			txt.wordWrap = true;//指示文本字段是否自动换行
			txt.width = 400;
			addChild(txt);
			txt.x=(txt.stage.stageWidth-400)/2;
			txt.y=(txt.stage.stageHeight-txt.height)/2;
			i++;

		}
	}

	
}