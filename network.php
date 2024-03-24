	<?php
	if(session_id() == '' || !isset($_SESSION) ){
	  session_start();
	}
	?><HTML>
	<HEAD>
		<TITLE>AVEXƎVA</TITLE>
		<META charset='UTF-8'>
		<STYLE>
			HTML {
				scrollbar-width : none;
				-ms-overflow-STYLE : none;
				overflow : -moz-scrollbars-none;
			}
			HTML::-webkit-scrollbar, PRE::-webkit-scrollbar {
				display:none;
			}
			BODY {
				margin : 0px;
				background-color : white;
				height : 100%;
				overflow : hidden;
			}
			TABLE, TBODY, TR, TD {
				WIDTH : 100%;
				TEXT-ALIGN : CENTER;
				border:0px;
				border-collapse: collapse;
				border-spacing : 0px;
				FONT-SIZE : 1.15em;
				POSITION:RELATIVE;
				OVERFLOW:HIDDEN;
				PADDING:0px;
			}
		</STYLE>
	</HEAD>
	<BODY>
		<TABLE style='height:100%;'><TBODY>
			<TR style='height:25%;background-color:white;'><TD></TD></TR>
			<TR><TD><TABLE style='height:1.25em;background-color:black;'><TBODY>
				<TR style='color:black;background-color:white;height:50%;'><TD><DIV style='bottom:-.625em;position:relative;'>AVEXƎVA</DIV></TD></TR>
				<TR style=''><TD><?php echo file_get_contents( "https://www.AVEXEVA.com" );?></TD></TR>
				<TR style='color:white;background-color:black;height:50%;'><TD><DIV style='top:-.625em;position:relative;'>AVEXƎVA</DIV></TD></TR>
			</TBODY></TABLE></TD></TR>
			<TR style='height:50%;background-color:black;'><TD></TD></TR>
		</TBODY></TABLE>
		<?php
			$Sessions = count( scandir( ini_get( 'session.save_path' ) ) ) - 1;
			for( $i = 0; $i < $Sessions; $i++ ){?><DIV STYLE='transform:rotate(<?php echo $i * ( 360 / $i );?>deg);left:50%;top:50%;'><?PHP
				file_get_contents( 'http://www.AVEXEVA.com' );
			?></DIV><?php }
		?>
	</BODY>
	</HTML><!--<HTML>
	<HEAD>
		<TITLE>AVEXƎVA</TITLE>
		<META charset='UTF-8'>
		<STYLE>
			HTML {
				scrollbar-width : none;
				-ms-overflow-STYLE : none;
				overflow : -moz-scrollbars-none;
			}
			HTML::-webkit-scrollbar, PRE::-webkit-scrollbar {
				display:none;
			}
			BODY {
				margin : 0px;
				background-color : white;
			}
			HEADER {
				width : 100%;
				height : 50%;
				z-index : 0;
				background-color : black;
				text-align : center;
				color : white;
				position : relative;
			}
			HEADER {
				position : absolute;
				font-size : 42px;
				bottom : 0px;
			}
		</STYLE>
	</HEAD>
	<BODY>
		<HEADER>AVEXƎVA</HEADER>
	</BODY>
	</HTML>-->
