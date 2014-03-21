/* ICONS.H
   default icon set for alopex. Icon art contributions by github users:
     UnderCooled
	 HalosGhost
*/

#ifndef __ALOPEX_ICONS_H__
#define __ALOPEX_ICONS_H__		"ALOPEX Icons 0.9"

#define MAKE_ICON(x)	{ (sizeof(x)/sizeof(x[0])), (XPoint *) x }

static const int iconwidth = 10;
static const int iconheight = 10;

typedef struct Icon {
	int n;
	XPoint *pts;
} Icon;

/*
static const XPoint template_icon[] = {
	{0,0},	{1,0},	{2,0},	{3,0},	{4,0},	{5,0},	{6,0},	{7,0},	{8,0},	{9,0},
	{0,1},	{1,1},	{2,1},	{3,1},	{4,1},	{5,1},	{6,1},	{7,1},	{8,1},	{9,1},
	{0,2},	{1,2},	{2,2},	{3,2},	{4,2},	{5,2},	{6,2},	{7,2},	{8,2},	{9,2},
	{0,3},	{1,3},	{2,3},	{3,3},	{4,3},	{5,3},	{6,3},	{7,3},	{8,3},	{9,3},
	{0,4},	{1,4},	{2,4},	{3,4},	{4,4},	{5,4},	{6,4},	{7,4},	{8,4},	{9,4},
	{0,5},	{1,5},	{2,5},	{3,5},	{4,5},	{5,5},	{6,5},	{7,5},	{8,5},	{9,5},
	{0,6},	{1,6},	{2,6},	{3,6},	{4,6},	{5,6},	{6,6},	{7,6},	{8,6},	{9,6},
	{0,7},	{1,7},	{2,7},	{3,7},	{4,7},	{5,7},	{6,7},	{7,7},	{8,7},	{9,7},
	{0,8},	{1,8},	{2,8},	{3,8},	{4,8},	{5,8},	{6,8},	{7,8},	{8,8},	{9,8},
	{0,9},	{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},	{9,9},
};
*/

static const XPoint clock_icon[] = {
							{3,0},	{4,0},	{5,0},	{6,0},
					{2,1},									{7,1},
			{1,2},					{4,2},							{8,2},
	{0,3},							{4,3},									{9,3},
	{0,4},							{4,4},								 	{9,4},
	{0,5},							{4,5},	{5,5},	{6,5},	{7,5},			{9,5},
	{0,6},																	{9,6},
			{1,7},													{8,7},
					{2,8},									{7,8},
							{3,9},	{4,9},	{5,9},	{6,9},
};

static const XPoint cpu_icon[] = {
	{0,0},	{1,0},	{2,0},	{3,0},	{4,0},	{5,0},	{6,0},	{7,0},	{8,0},	{9,0},
	{0,1},																	{9,1},
	{0,2},					{3,2},	{4,2},	{5,2},	{6,2},					{9,2},
	{0,3},					{3,3},					{6,3},					{9,3},
	{0,4},					{3,4},			{5,4},	{6,4},					{9,4},
	{0,5},					{3,5},	{4,5},	{5,5},	{6,5},					{9,5},
	{0,6},					{3,6},	{4,6},	{5,6},	{6,6},					{9,6},
	{0,7},																	{9,7},
	{0,8},	{1,8},	{2,8},	{3,8},	{4,8},	{5,8},	{6,8},	{7,8},	{8,8},	{9,8},
	{0,9},			{2,9},			{4,9},			{6,9},			{8,9},
};

static const XPoint mem_icon[] = {
			{1,0},	{2,0},	{3,0},	{4,0},	{5,0},	{6,0},	{7,0},	{8,0},
	{0,1},																	{9,1},
	{0,2},	{1,2},			{3,2},	{4,2},	{5,2},	{6,2},			{8,2},	{9,2},
	{0,3},					{3,3},	{4,3},	{5,3},	{6,3},					{9,3},
	{0,4},	{1,4},			{3,4},	{4,4},	{5,4},	{6,4},			{8,4},	{9,4},
	{0,5},					{3,5},	{4,5},	{5,5},	{6,5},					{9,5},
	{0,6},	{1,6},			{3,6},	{4,6},	{5,6},	{6,6},			{8,6},	{9,6},
	{0,7},																	{9,7},
	{0,8},	{1,8},	{2,8},	{3,8},	{4,8},	{5,8},	{6,8},	{7,8},	{8,8},	{9,8},
	{0,9},																	{9,9},
};

static const XPoint speaker_hi_icon[] = {
									{4,0},			{6,0},
							{3,1},	{4,1},					{7,1},
					{2,2},	{3,2},	{4,2},							{8,2},
	{0,3},	{1,3},	{2,3},	{3,3},	{4,3},			{6,3},					{9,3},
	{0,4},	{1,4},	{2,4},	{3,4},	{4,4},					{7,4},			{9,4},
	{0,5},	{1,5},	{2,5},	{3,5},	{4,5},					{7,5},			{9,5},
	{0,6},	{1,6},	{2,6},	{3,6},	{4,6},			{6,6},					{9,6},
					{2,7},	{3,7},	{4,7},							{8,7},
							{3,8},	{4,8},					{7,8},
									{4,9},			{6,9},
};

static const XPoint speaker_mid_icon[] = {
									{4,0},
							{3,1},	{4,1},			{6,1},
					{2,2},	{3,2},	{4,2},					{7,2},
	{0,3},	{1,3},	{2,3},	{3,3},	{4,3},							{8,3},
	{0,4},	{1,4},	{2,4},	{3,4},	{4,4},							{8,4},
	{0,5},	{1,5},	{2,5},	{3,5},	{4,5},							{8,5},
	{0,6},	{1,6},	{2,6},	{3,6},	{4,6},							{8,6},
					{2,7},	{3,7},	{4,7},					{7,7},
							{3,8},	{4,8},			{6,8},
									{4,9},			
};

static const XPoint speaker_low_icon[] = {
									{4,0},
							{3,1},	{4,1},
					{2,2},	{3,2},	{4,2},
	{0,3},	{1,3},	{2,3},	{3,3},	{4,3},
	{0,4},	{1,4},	{2,4},	{3,4},	{4,4},
	{0,5},	{1,5},	{2,5},	{3,5},	{4,5},
	{0,6},	{1,6},	{2,6},	{3,6},	{4,6},
					{2,7},	{3,7},	{4,7},
							{3,8},	{4,8},
									{4,9},			
};

static const XPoint speaker_mute_icon[] = {
											{5,0},							{9,0},
							{3,1},			{5,1},							{9,1},
					{2,2},	{3,2},	{4,2},			{6,2},			{8,2},
	{0,3},	{1,3},	{2,3},	{3,3},	{4,3},			{6,3},			{8,3},
	{0,4},	{1,4},	{2,4},	{3,4},	{4,4},					{7,4},
	{0,5},	{1,5},	{2,5},	{3,5},	{4,5},					{7,5},	
	{0,6},	{1,6},	{2,6},	{3,6},	{4,6},			{6,6},			{8,6},
					{2,7},	{3,7},	{4,7},			{6,7},			{8,7},
							{3,8},			{5,8},							{9,8},
											{5,9},							{9,9},
};

static const XPoint wifi_full_icon[] = {
													{8,0},	
										{6,1},		{8,1},	
							{4,2},		{6,2},		{8,2},	
				{2,3},		{4,3},		{6,3},		{8,3},	
	{0,4},		{2,4},		{4,4},		{6,4},		{8,4},	
  	{0,5},		{2,5},		{4,5},		{6,5},		{8,5},	
	{0,6},		{2,6},		{4,6},		{6,6},		{8,6},	
	{0,7},		{2,7},		{4,7},		{6,7},		{8,7},	
	{0,8},		{2,8},		{4,8},		{6,8},		{8,8},	
	{0,9},		{2,9},		{4,9},		{6,9},		{8,9},	
};

static const XPoint wifi_hi_icon[] = {
													{8,0},	
													{8,1},	
										{6,2},		{8,2},	
										{6,3},		{8,3},	
							{4,4},		{6,4},		{8,4},	
  							{4,5},		{6,5},		{8,5},	
				{2,6},		{4,6},		{6,6},		{8,6},	
				{2,7},		{4,7},		{6,7},		{8,7},	
	{0,8},		{2,8},		{4,8},		{6,8},		{8,8},	
	{0,9},		{2,9},		{4,9},		{6,9},		{8,9},	
};

static const XPoint wifi_mid_icon[] = {
													{8,1},	
													{8,2},	
										{6,3},		{8,3},	
										{6,4},		{8,4},	
							{4,5},		{6,5},		{8,5},	
  							{4,6},		{6,6},		{8,6},	
				{2,7},		{4,7},		{6,7},		{8,7},	
				{2,8},		{4,8},		{6,8},		{8,8},	
				{2,9},		{4,9},		{6,9},		{8,9},	
};

static const XPoint wifi_low_icon[] = {
										{6,3},	
										{6,4},	
							{4,5},		{6,5},	
  							{4,6},		{6,6},	
				{2,7},		{4,7},		{6,7},	
				{2,8},		{4,8},		{6,8},	
				{2,9},		{4,9},		{6,9},	
};

static const XPoint wifi_off_icon[] = {
							{4,7},		{6,7},	
  							{4,8},		{6,8},	
				{2,9},		{4,9},		{6,9},	
};

static const XPoint mail_new_icon[] = {
			{1,0},	{2,0},	{3,0},	{4,0},	{5,0},	{6,0},	{7,0},	{8,0},
	{0,1},			{2,1},	{3,1},	{4,1},	{5,1},	{6,1},	{7,1},			{9,1},
	{0,2},					{3,2},	{4,2},	{5,2},	{6,2},					{9,2},
	{0,3},	{1,3},					{4,3},	{5,3},					{8,3},	{9,3},
	{0,4},	{1,4},	{2,4},									{7,4},	{8,4},	{9,4},
	{0,5},	{1,5},	{2,5},	{3,5},					{6,5},	{7,5},	{8,5},	{9,5},
	{0,6},	{1,6},	{2,6},	{3,6},	{4,6},	{5,6},	{6,6},	{7,6},	{8,6},	{9,6},
	{0,7},	{1,7},	{2,7},	{3,7},	{4,7},	{5,7},	{6,7},	{7,7},	{8,7},	{9,7},
	{0,8},	{1,8},	{2,8},	{3,8},	{4,8},	{5,8},	{6,8},	{7,8},	{8,8},	{9,8},
			{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint mail_none_icon[] = {
			{1,0},	{2,0},	{3,0},	{4,0},	{5,0},	{6,0},	{7,0},	{8,0},
	{0,1},																	{9,1},
	{0,2},																	{9,2},
	{0,3},			{2,3},									{7,3},			{9,3},
	{0,4},					{3,4},					{6,4},					{9,4},
	{0,5},							{4,5},	{5,5},							{9,5},
	{0,6},																	{9,6},
	{0,7},																	{9,7},
	{0,8},																	{9,8},
			{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint batt_full_icon[] = {
							{3,0},	{4,0},	{5,0},	{6,0},
	{0,1},	{1,1},	{2,1},	{3,1},					{6,1},	{7,1},	{8,1},	{9,1},
	{0,2},					{3,2},			{5,2},			{7,2},			{9,2},
	{0,3},			{2,3},			{4,3},			{6,3},					{9,3},
	{0,4},					{3,4},			{5,4},			{7,4},			{9,4},
	{0,5},			{2,5},			{4,5},			{6,5},					{9,5},
	{0,6},					{3,6},			{5,6},			{7,6},			{9,6},
	{0,7},			{2,7},			{4,7},			{6,7},					{9,7},
	{0,8},					{3,8},			{5,8},			{7,8},			{9,8},
			{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint batt_hi_icon[] = {
							{3,0},	{4,0},	{5,0},	{6,0},
	{0,1},	{1,1},	{2,1},	{3,1},					{6,1},	{7,1},	{8,1},	{9,1},
	{0,2},													{7,2},			{9,2},
	{0,3},											{6,3},					{9,3},
	{0,4},									{5,4},			{7,4},			{9,4},
	{0,5},							{4,5},			{6,5},					{9,5},
	{0,6},					{3,6},			{5,6},			{7,6},			{9,6},
	{0,7},			{2,7},			{4,7},			{6,7},					{9,7},
	{0,8},					{3,8},			{5,8},			{7,8},			{9,8},
			{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint batt_mid_icon[] = {
							{3,0},	{4,0},	{5,0},	{6,0},
	{0,1},	{1,1},	{2,1},	{3,1},					{6,1},	{7,1},	{8,1},	{9,1},
	{0,2},																	{9,2},
	{0,3},													{7,3},			{9,3},
	{0,4},											{6,4},					{9,4},
	{0,5},									{5,5},			{7,5},			{9,5},
	{0,6},							{4,6},			{6,6},					{9,6},
	{0,7},					{3,7},			{5,7},			{7,7},			{9,7},
	{0,8},			{2,8},			{4,8},			{6,8},					{9,8},
			{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint batt_low_icon[] = {
							{3,0},	{4,0},	{5,0},	{6,0},
	{0,1},	{1,1},	{2,1},	{3,1},					{6,1},	{7,1},	{8,1},	{9,1},
	{0,2},																	{9,2},
	{0,3},																	{9,3},
	{0,4},																	{9,4},
	{0,5},													{7,5},			{9,5},
	{0,6},											{6,6},					{9,6},
	{0,7},									{5,7},			{7,7},			{9,7},
	{0,8},							{4,8},			{6,8},					{9,8},
			{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint batt_zero_icon[] = {
							{3,0},	{4,0},	{5,0},	{6,0},
	{0,1},	{1,1},	{2,1},	{3,1},					{6,1},	{7,1},	{8,1},	{9,1},
	{0,2},																	{9,2},
	{0,3},																	{9,3},
	{0,4},																	{9,4},
	{0,5},																	{9,5},
	{0,6},																	{9,6},
	{0,7},																	{9,7},
	{0,8},																	{9,8},
			{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint batt_charge_icon[] = {
													{6,0},	{7,0},
											{5,1},	{6,1},
									{4,2},	{5,2},	
							{3,3},	{4,3},		
					{2,4},	{3,4},	{4,4},	{5,4},	{6,4},	{7,4},	{8,4},
			{1,5},	{2,5},	{3,5},	{4,5},	{5,5},	{6,5},	{7,5},
											{5,6},	{6,6},
									{4,7},	{5,7},
							{3,8},	{4,8},
					{2,9},	{3,9},
};

static const XPoint arch_icon[] = {
									{4,0},	{5,0},
									{4,1},	{5,1},
							{3,2},	{4,2},	{5,2},	{6,2},
							{3,3},	{4,3},	{5,3},	{6,3},
					{2,4},	{3,4},	{4,4},	{5,4},	{6,4},	{7,4},
					{2,5},	{3,5},					{6,5},	{7,5},
			{1,6},	{2,6},	{3,6},					{6,6},	{7,6},	{8,6},
			{1,7},	{2,7},	{3,7},					{6,7},	{7,7},	{8,7},
	{0,8},	{1,8},	{2,8},									{7,8},	{8,8},	{9,8},
	{0,9},	{1,9},													{8,9},	{9,9},
};

static const XPoint app_term[] = { 
   {0,0},   {1,0},   {2,0},   {3,0},   {4,0},   {5,0},   {6,0},   {7,0},   {8,0},   {9,0},
   {0,1},   {1,1},   {2,1},   {3,1},   {4,1},   {5,1},   {6,1},   {7,1},   {8,1},   {9,1},
   {0,2},                                                                           {9,2},
   {0,3},            {2,3},                                                         {9,3},
   {0,4},            {2,4},   {3,4},                                                {9,4},
   {0,5},                     {3,5},                                                {9,5},
   {0,6},            {2,6},   {3,6},                                                {9,6},
   {0,7},            {2,7},                     {5,7},   {6,7},   {7,7},            {9,7},
   {0,8},                                                                           {9,8},
   {0,9},   {1,9},   {2,9},   {3,9},   {4,9},   {5,9},   {6,9},   {7,9},   {8,9},   {9,9},
};

static const XPoint app_web[] = { 
                     {2,0},   {3,0},   {4,0},   {5,0},            {7,0},
            {1,1},                     {4,1},   {5,1},                     {8,1},
   {0,2},   {1,2},                                                         {8,2},   {9,2},
   {0,3},                              {4,3},   {5,3},                              {9,3},
   {0,4},   {1,4},                     {4,4},   {5,4},                     {8,4},   {9,4},
            {1,5},                     {4,5},   {5,5},                     {8,5},
                     {2,6},            {4,6},   {5,6},   {6,6},   {7,6},
                                       {4,7},   {5,7},
                                       {4,8},   {5,8},
                                       {4,9},   {5,9},
};

static const XPoint app_stats[] = { 
   {0,0},
   {0,1},
   {0,2},                     {3,2},
   {0,3},            {2,3},            {4,3},
   {0,4},            {2,4},                     {4,4},
   {0,5},   {1,5},                              {5,5},
   {0,6},   {1,6},                                    {5,6},   {6,6},
   {0,7},                                                         {7,7},
   {0,8},                                                                  {8,8},   {9,8},
   {0,9},   {1,9},   {2,9},   {3,9},   {4,9},   {5,9},   {6,9},   {7,9},   {8,9},   {9,9},
};

static const XPoint app_docs[] = { 
            {1,0},   {2,0},   {3,0},   {4,0},   {5,0},
            {1,1},                                       {6,1},
            {1,2},                                                {7,2},
            {1,3},            {3,3},   {4,3},   {5,3},                     {8,3},
            {1,4},                                                         {8,4},
            {1,5},            {3,5},   {4,5},   {5,5},   {6,5},            {8,5},
            {1,6},                                                         {8,6},
            {1,7},            {3,7},   {4,7},   {5,7},   {6,7},            {8,7},
            {1,8},                                                         {8,8},
            {1,9},   {2,9},   {3,9},   {4,9},   {5,9},   {6,9},   {7,9},   {8,9},
};

static const XPoint app_music[] = { 
                              {3,0},   {4,0},   {5,0},   {6,0},   {7,0},   {8,0},   {9,0},
                              {3,1},   {4,1},   {5,1},   {6,1},   {7,1},   {8,1},   {9,1},
                              {3,2},                                                {9,2},
                              {3,3},                                                {9,3},
                              {3,4},                                                {9,4},
            {1,5},   {2,5},   {3,5},                                                {9,5},
   {0,6},   {1,6},   {2,6},   {3,6},                              {7,6},   {8,6},   {9,6},
   {0,7},   {1,7},   {2,7},   {3,7},                     {6,7},   {7,7},   {8,7},   {9,7},
            {1,8},   {2,8},                              {6,8},   {7,8},   {8,8},   {9,8},
                                                                  {7,9},   {8,9},
};

static const XPoint app_video[] = { 
   {0,0},            {2,0},                                       {7,0},            {9,0},
   {0,1},   {1,1},   {2,1},                                       {7,1},   {8,1},   {9,1},
   {0,2},            {2,2},   {3,2},   {4,2},   {5,2},   {6,2},   {7,2},            {9,2},
   {0,3},   {1,3},   {2,3},                                       {7,3},   {8,3},   {9,3},
   {0,4},            {2,4},                                       {7,4},            {9,4},
   {0,5},   {1,5},   {2,5},                                       {7,5},   {8,5},   {9,5},
   {0,6},            {2,6},                                       {7,6},            {9,6},
   {0,7},   {1,7},   {2,7},   {3,7},   {4,7},   {5,7},   {6,7},   {7,7},   {8,7},   {9,7},
   {0,8},            {2,8},                                       {7,8},            {9,8},
   {0,9},   {1,9},   {2,9},                                       {7,9},   {8,9},   {9,9},
};

static const XPoint app_games[] = {
                     {2,0},   {3,0},   {4,0},   {5,0},   {6,0},   {7,0},
                     {2,1},                                       {7,1},
   {0,2},   {1,2},   {2,2},                                       {7,2},   {8,2},   {9,2},
   {0,3},                              {4,3},                                       {9,3},
   {0,4},                              {4,4},   {5,4},                              {9,4},
   {0,5},                              {4,5},   {5,5},                              {9,5},
   {0,6},                              {4,6},                                       {9,6},
   {0,7},   {1,7},   {2,7},                                       {7,7},   {8,7},   {9,7},
                     {2,8},                                       {7,8},
                     {2,9},   {3,9},   {4,9},   {5,9},   {6,9},   {7,9},
};

static const XPoint app_images[] = {
   {0,0},   {1,0},   {2,0},   {3,0},   {4,0},   {5,0},   {6,0},   {7,0},   {8,0},   {9,0},
   {0,1},                                                                           {9,1},
   {0,2},                                                                           {9,2},
   {0,3},                                                                           {9,3},
   {0,4},                                                                           {9,4},
   {0,5},            {2,5},   {3,5},   {4,5},                                       {9,5},
   {0,6},   {1,6},   {2,6},   {3,6},   {4,6},   {5,6},                     {8,6},   {9,6},
   {0,7},   {1,7},   {2,7},   {3,7},   {4,7},   {5,7},   {6,7},   {7,7},   {8,7},   {9,7},
   {0,8},   {1,8},   {2,8},   {3,8},   {4,8},   {5,8},   {6,8},   {7,8},   {8,8},   {9,8},
   {0,9},   {1,9},   {2,9},   {3,9},   {4,9},   {5,9},   {6,9},   {7,9},   {8,9},   {9,9},
};

static const XPoint ext_monitor[] = {
	{0,0},	{1,0},	{2,0},	{3,0},	{4,0},	{5,0},	{6,0},	{7,0},	{8,0},	{9,0},
	{0,1},																	{9,1},
	{0,2},																	{9,2},
	{0,3},																	{9,3},
	{0,4},																	{9,4},
	{0,5},																	{9,5},
	{0,6},																	{9,6},
	{0,7},	{1,7},	{2,7},	{3,7},	{4,7},	{5,7},	{6,7},	{7,7},	{8,7},	{9,7},
							{3,8},	{4,8},	{5,8},	{6,8},
			{1,9},	{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint notebook_icon[] = {
	{0,0},	{1,0},	{2,0},	{3,0},	{4,0},	{5,0},	{6,0},	{7,0},	{8,0},
					{2,1},											{8,1},
	{0,2},	{1,2},	{2,2},											{8,2},
					{2,3},											{8,3},
	{0,4},	{1,4},	{2,4},	{3,4},	{4,4},	{5,4},	{6,4},	{7,4},	{8,4},
					{2,5},	{3,5},	{4,5},	{5,5},	{6,5},	{7,5},	{8,5},
	{0,6},	{1,6},	{2,6},	{3,6},	{4,6},	{5,6},	{6,6},	{7,6},	{8,6},
					{2,7},	{3,7},	{4,7},	{5,7},	{6,7},	{7,7},	{8,7},
	{0,8},	{1,8},	{2,8},	{3,8},	{4,8},	{5,8},	{6,8},	{7,8},	{8,8},
					{2,9},	{3,9},	{4,9},	{5,9},	{6,9},	{7,9},	{8,9},
};

static const XPoint screen_hi[] = {
											{5,1},
					{2,2},					{5,2},					{8,2},
							{3,3},	{4,3},	{5,3},	{6,3},	{7,3},
							{3,4},	{4,4},	{5,4},	{6,4},	{7,4},
			{1,5},	{2,5},	{3,5},	{4,5},	{5,5},	{6,5},	{7,5},	{8,5},	{9,5},
							{3,6},	{4,6},	{5,6},	{6,6},	{7,6},
							{3,7},	{4,7},	{5,7},	{6,7},	{7,7},
					{2,8},					{5,8},					{8,8},
											{5,9},
};

static const XPoint screen_lo[] = {
											{5,1},
					{2,2},					{5,2},					{8,2},
							{3,3},	{4,3},	{5,3},	{6,3},	{7,3},
							{3,4},							{7,4},
			{1,5},	{2,5},	{3,5},							{7,5},	{8,5},	{9,5},
							{3,6},							{7,6},
							{3,7},	{4,7},	{5,7},	{6,7},	{7,7},
					{2,8},					{5,8},					{8,8},
											{5,9},
};

static const Icon icons[] = {
	[0]		= MAKE_ICON(clock_icon),
	[1]		= MAKE_ICON(cpu_icon),
	[2]		= MAKE_ICON(mem_icon),
	[3]		= MAKE_ICON(speaker_hi_icon),
	[4]		= MAKE_ICON(speaker_mid_icon),
	[5]		= MAKE_ICON(speaker_low_icon),
	[6]		= MAKE_ICON(speaker_mute_icon),
	[7]		= MAKE_ICON(wifi_full_icon),
	[8]		= MAKE_ICON(wifi_hi_icon),
	[9]		= MAKE_ICON(wifi_mid_icon),
	[10]	= MAKE_ICON(wifi_low_icon),
	[11]	= MAKE_ICON(wifi_off_icon),
	[12]	= MAKE_ICON(mail_new_icon),
	[13]	= MAKE_ICON(mail_none_icon),
	[14]	= MAKE_ICON(batt_full_icon),
	[15]	= MAKE_ICON(batt_hi_icon),
	[16]	= MAKE_ICON(batt_mid_icon),
	[17]	= MAKE_ICON(batt_low_icon),
	[18]	= MAKE_ICON(batt_zero_icon),
	[19]	= MAKE_ICON(batt_charge_icon),
	[20]	= MAKE_ICON(arch_icon),
	[21]	= MAKE_ICON(app_term),
	[22]	= MAKE_ICON(app_web),
	[23]	= MAKE_ICON(app_stats),
	[24]	= MAKE_ICON(app_docs),
	[25]	= MAKE_ICON(app_music),
	[26]	= MAKE_ICON(app_video),
	[27]	= MAKE_ICON(app_games),
	[28]	= MAKE_ICON(app_images),
	[29]	= MAKE_ICON(ext_monitor),
	[30]	= MAKE_ICON(notebook_icon),
	[31]	= MAKE_ICON(screen_hi),
	[32]	= MAKE_ICON(screen_lo),
};

// vim: ts=4
#endif /* __ALOPEX_ICONS_H__ */


