.class public Lnet/veritran/component/VTProgressBar;
.super Lnet/veritran/component/VTUIComponent;
.source "VTProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/VTProgressBar$ProgressTimerTask;,
        Lnet/veritran/component/VTProgressBar$ProgressType;,
        Lnet/veritran/component/VTProgressBar$AutoDumpFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VTProgressBar"

.field private static dictAreaNameVectorProgressBars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/component/VTProgressBar;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final BUNDLE_INITIAL_TIME:Ljava/lang/String;

.field private final CANT_STEPS:I

.field private final STEP_TIMER_MILLIS:I

.field private autoDump:Ljava/lang/Integer;

.field private direction:Ljava/lang/String;

.field private format:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

.field private handler:Landroid/os/Handler;

.field private handlerMainThread:Landroid/os/Handler;

.field private initialTimeMillis:J

.field private lastElapsed:I

.field private next:Ljava/lang/String;

.field private onTick:Ljava/lang/String;

.field private runOnTick:Ljava/lang/Runnable;

.field private runnable:Ljava/lang/Runnable;

.field timeFormatted:Ljava/lang/String;

.field private timeMillies:I

.field private timer:Ljava/util/Timer;

.field private type:Lnet/veritran/component/VTProgressBar$ProgressType;

.field private vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

.field private vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lnet/veritran/VTCommonActivity;)V
    .locals 2
    .param p1, "activity"    # Lnet/veritran/VTCommonActivity;

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponent;-><init>()V

    .line 40
    const-string v0, "BUNDLE_INITIAL_TIME"

    iput-object v0, p0, Lnet/veritran/component/VTProgressBar;->BUNDLE_INITIAL_TIME:Ljava/lang/String;

    .line 41
    const/16 v0, 0x64

    iput v0, p0, Lnet/veritran/component/VTProgressBar;->STEP_TIMER_MILLIS:I

    .line 44
    const/16 v0, 0x258

    iput v0, p0, Lnet/veritran/component/VTProgressBar;->CANT_STEPS:I

    .line 46
    const/16 v0, 0x1388

    iput v0, p0, Lnet/veritran/component/VTProgressBar;->timeMillies:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/VTProgressBar;->lastElapsed:I

    .line 77
    iput-object v1, p0, Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

    .line 78
    iput-object v1, p0, Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;

    .line 87
    new-instance v0, Lnet/veritran/component/VTProgressBar$1;

    invoke-direct {v0, p0}, Lnet/veritran/component/VTProgressBar$1;-><init>(Lnet/veritran/component/VTProgressBar;)V

    iput-object v0, p0, Lnet/veritran/component/VTProgressBar;->runOnTick:Ljava/lang/Runnable;

    .line 406
    iput-object v1, p0, Lnet/veritran/component/VTProgressBar;->timeFormatted:Ljava/lang/String;

    .line 158
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTProgressBar;->setActivity(Lnet/veritran/VTCommonActivity;)V

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lnet/veritran/VTCommonActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/veritran/component/VTProgressBar;->handlerMainThread:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/VTProgressBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->onTick:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lnet/veritran/component/VTProgressBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->next:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/view/VTProgressCircleView;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;

    return-object v0
.end method

.method static synthetic access$1100(Lnet/veritran/component/VTProgressBar;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$300(Lnet/veritran/component/VTProgressBar;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    invoke-direct {p0}, Lnet/veritran/component/VTProgressBar;->updateAutoDump()V

    return-void
.end method

.method static synthetic access$400(Lnet/veritran/component/VTProgressBar;)J
    .locals 2
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget-wide v0, p0, Lnet/veritran/component/VTProgressBar;->initialTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$500(Lnet/veritran/component/VTProgressBar;)I
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget v0, p0, Lnet/veritran/component/VTProgressBar;->timeMillies:I

    return v0
.end method

.method static synthetic access$600(Lnet/veritran/component/VTProgressBar;)Z
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    invoke-direct {p0}, Lnet/veritran/component/VTProgressBar;->isCircleProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lnet/veritran/component/VTProgressBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->direction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/view/VTProgressBarView;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

    return-object v0
.end method

.method static synthetic access$900(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/VTProgressBar$ProgressType;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/VTProgressBar;

    .prologue
    .line 27
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->type:Lnet/veritran/component/VTProgressBar$ProgressType;

    return-object v0
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 400
    div-int/lit8 v0, p1, 0x3c

    .line 401
    .local v0, "minutes":I
    rem-int/lit8 v1, p1, 0x3c

    .line 403
    .local v1, "seconds":I
    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initProgressBar()V
    .locals 32

    .prologue
    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    if-eqz v5, :cond_0

    .line 185
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 186
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    invoke-virtual {v5}, Ljava/util/Timer;->purge()I

    .line 187
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    .line 189
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    if-eqz v5, :cond_1

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/VTProgressBar;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    .line 194
    :cond_1
    sget-object v5, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getVisualAreaName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 195
    sget-object v5, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getVisualAreaName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_2
    sget-object v5, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getVisualAreaName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 198
    sget-object v5, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getVisualAreaName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "time"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 202
    .local v31, "time":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v31

    .line 204
    if-eqz v31, :cond_4

    .line 205
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lnet/veritran/component/VTProgressBar;->timeMillies:I

    .line 208
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "next"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->next:Ljava/lang/String;

    .line 209
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "direction"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->direction:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "autodump"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 212
    .local v25, "sAutoDump":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 213
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v25

    .line 214
    const-string v5, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 216
    :try_start_0
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->autoDump:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "onTick"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->onTick:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "format"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v26

    .line 226
    .local v26, "sFormat":Ljava/lang/String;
    const-string v5, "secondsElapsed"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 228
    sget-object v5, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->format:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    .line 247
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v27

    .line 249
    .local v27, "sType":Ljava/lang/String;
    const-string v5, "clock"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 251
    sget-object v5, Lnet/veritran/component/VTProgressBar$ProgressType;->CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->type:Lnet/veritran/component/VTProgressBar$ProgressType;

    .line 259
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->direction:Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->direction:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 261
    :cond_7
    new-instance v5, Lnet/veritran/component/VTProgressBar$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnet/veritran/component/VTProgressBar$2;-><init>(Lnet/veritran/component/VTProgressBar;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->runnable:Ljava/lang/Runnable;

    .line 267
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/VTProgressBar;->runnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget v8, v0, Lnet/veritran/component/VTProgressBar;->timeMillies:I

    int-to-long v8, v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    :goto_3
    return-void

    .line 217
    .end local v26    # "sFormat":Ljava/lang/String;
    .end local v27    # "sType":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 218
    .local v21, "nfe":Ljava/lang/NumberFormatException;
    const-string v5, "VTProgressBar"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v5, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    .end local v21    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v26    # "sFormat":Ljava/lang/String;
    :cond_8
    const-string v5, "secondsRemaining"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 232
    sget-object v5, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->SECONDS_REMAINING:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->format:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    goto :goto_1

    .line 234
    :cond_9
    const-string v5, "minutesSecondsElapsed"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 236
    sget-object v5, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->MINUTES_SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->format:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    goto/16 :goto_1

    .line 238
    :cond_a
    const-string v5, "minutesSecondsRemaining"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 240
    sget-object v5, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->MINUTES_SECONDS_REMAINING:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->format:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    goto/16 :goto_1

    .line 244
    :cond_b
    sget-object v5, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->MINUTES_SECONDS_ELAPSED:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->format:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    goto/16 :goto_1

    .line 253
    .restart local v27    # "sType":Ljava/lang/String;
    :cond_c
    const-string v5, "textClock"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 255
    sget-object v5, Lnet/veritran/component/VTProgressBar$ProgressType;->TEXT_CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->type:Lnet/veritran/component/VTProgressBar$ProgressType;

    goto/16 :goto_2

    .line 272
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

    if-nez v5, :cond_10

    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->isCircleProgress()Z

    move-result v5

    if-nez v5, :cond_10

    .line 274
    new-instance v5, Lnet/veritran/component/view/VTProgressBarView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnet/veritran/component/view/VTProgressBarView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

    .line 290
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->defineWidth()V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->defineHeight()V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->defineMargins()V

    .line 294
    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->isCircleProgress()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 296
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;

    const/16 v7, 0x258

    invoke-virtual {v5, v7}, Lnet/veritran/component/view/VTProgressCircleView;->setMax(I)V

    .line 390
    :cond_f
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lnet/veritran/component/VTProgressBar;->initialTimeMillis:J

    .line 391
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    .line 393
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    new-instance v9, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v5}, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;-><init>(Lnet/veritran/component/VTProgressBar;Lnet/veritran/component/VTProgressBar$1;)V

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x64

    invoke-virtual/range {v8 .. v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_3

    .line 276
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;

    if-nez v5, :cond_e

    invoke-direct/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->isCircleProgress()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 278
    new-instance v5, Lnet/veritran/component/view/VTProgressCircleView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnet/veritran/component/view/VTProgressCircleView;-><init>(Lnet/veritran/component/VTUIComponent;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;

    .line 280
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->direction:Ljava/lang/String;

    const-string v8, "L"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    :goto_6
    invoke-virtual {v7, v5}, Lnet/veritran/component/view/VTProgressCircleView;->setIsClockwise(Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "startcolor"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    .line 283
    .local v28, "startColor":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "endcolor"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 284
    .local v19, "endColor":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "textcolor"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 285
    .local v30, "textColor":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "backgroundcolor"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 287
    .local v14, "backgroundColor":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2, v14}, Lnet/veritran/component/view/VTProgressCircleView;->setColors(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 280
    .end local v14    # "backgroundColor":Ljava/lang/Integer;
    .end local v19    # "endColor":Ljava/lang/Integer;
    .end local v28    # "startColor":Ljava/lang/Integer;
    .end local v30    # "textColor":Ljava/lang/Integer;
    :cond_11
    const/4 v5, 0x0

    goto :goto_6

    .line 300
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

    const/16 v7, 0x258

    invoke-virtual {v5, v7}, Lnet/veritran/component/view/VTProgressBarView;->setMax(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "backgroundcolor"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 303
    .local v15, "backgroundColorStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    invoke-static {v15, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v15

    .line 304
    invoke-static {v15}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 305
    .restart local v14    # "backgroundColor":Ljava/lang/Integer;
    if-nez v14, :cond_13

    .line 306
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 314
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "startcolor"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 315
    .local v29, "startColorStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v29

    .line 316
    invoke-static/range {v29 .. v29}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    .line 317
    .restart local v28    # "startColor":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "endcolor"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 318
    .local v20, "endColorStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v20

    .line 319
    invoke-static/range {v20 .. v20}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 328
    .restart local v19    # "endColor":Ljava/lang/Integer;
    if-nez v19, :cond_14

    .line 329
    move-object/from16 v19, v28

    .line 331
    :cond_14
    if-eqz v28, :cond_f

    .line 332
    new-instance v24, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    .line 334
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v8

    move-object/from16 v0, v24

    invoke-direct {v0, v5, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 335
    .local v24, "progressGradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    new-instance v22, Landroid/graphics/drawable/ClipDrawable;

    const/4 v5, 0x3

    const/4 v7, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 337
    .local v22, "progressClipDrawable":Landroid/graphics/drawable/ClipDrawable;
    const/4 v5, 0x3

    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    .line 338
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v7, v23, v5

    const/4 v5, 0x1

    aput-object v22, v23, v5

    const/4 v5, 0x2

    aput-object v22, v23, v5

    .line 340
    .local v23, "progressDrawables":[Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 342
    .local v4, "progressLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "bordercolor"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v17

    .line 343
    .local v17, "borderColorStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->c:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    const-string v7, "bordersize"

    invoke-virtual {v5, v7}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/VTProgressBar;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v7

    invoke-static {v5, v7}, Lnet/veritran/function/parsers/ElementParser;->parse(Ljava/lang/String;Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Ljava/lang/String;

    move-result-object v18

    .line 345
    .local v18, "borderSizeStr":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 347
    .local v16, "borderColor":Ljava/lang/Integer;
    if-eqz v16, :cond_16

    if-eqz v18, :cond_16

    const-string v5, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 349
    const/4 v6, 0x0

    .line 351
    .local v6, "borderWidth":I
    const-string v5, "small"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 353
    const/4 v6, 0x2

    .line 364
    :cond_15
    :goto_7
    if-eqz v6, :cond_16

    .line 366
    const/4 v5, 0x0

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 367
    const/4 v5, 0x1

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 368
    const/4 v5, 0x2

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 370
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lnet/veritran/component/view/VTProgressBarView;->setBackgroundColor(I)V

    .line 374
    .end local v6    # "borderWidth":I
    :cond_16
    const/4 v5, 0x0

    const/high16 v7, 0x1020000

    invoke-virtual {v4, v5, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 375
    const/4 v5, 0x1

    const v7, 0x102000f

    invoke-virtual {v4, v5, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 376
    const/4 v5, 0x2

    const v7, 0x102000d

    invoke-virtual {v4, v5, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 386
    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

    invoke-virtual {v5, v4}, Lnet/veritran/component/view/VTProgressBarView;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 355
    .restart local v6    # "borderWidth":I
    :cond_17
    const-string v5, "medium"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 357
    const/4 v6, 0x4

    goto :goto_7

    .line 359
    :cond_18
    const-string v5, "large"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 361
    const/4 v6, 0x6

    goto :goto_7
.end method

.method private isCircleProgress()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->type:Lnet/veritran/component/VTProgressBar$ProgressType;

    sget-object v1, Lnet/veritran/component/VTProgressBar$ProgressType;->CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->type:Lnet/veritran/component/VTProgressBar$ProgressType;

    sget-object v1, Lnet/veritran/component/VTProgressBar$ProgressType;->TEXT_CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stopAllProgressBars()V
    .locals 6

    .prologue
    .line 98
    sget-object v2, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v1, "vectorProgressBars":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/veritran/component/VTProgressBar;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "vectorProgressBars":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/veritran/component/VTProgressBar;>;"
    check-cast v1, Ljava/util/Vector;

    .line 99
    .restart local v1    # "vectorProgressBars":Ljava/util/Vector;, "Ljava/util/Vector<Lnet/veritran/component/VTProgressBar;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTProgressBar;

    .line 100
    .local v0, "progressBar":Lnet/veritran/component/VTProgressBar;
    if-eqz v0, :cond_1

    .line 101
    iget-object v4, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    if-eqz v4, :cond_2

    .line 102
    iget-object v4, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 103
    iget-object v4, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 105
    :cond_2
    iget-object v4, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 106
    iget-object v4, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    iget-object v5, v0, Lnet/veritran/component/VTProgressBar;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 111
    .end local v0    # "progressBar":Lnet/veritran/component/VTProgressBar;
    :cond_3
    sget-object v2, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 113
    return-void
.end method

.method public static stopAllProgressBarsFromVisualArea(Ljava/lang/String;)V
    .locals 4
    .param p0, "area"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v1, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    sget-object v1, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTProgressBar;

    .line 120
    .local v0, "progressBar":Lnet/veritran/component/VTProgressBar;
    if-eqz v0, :cond_0

    .line 121
    iget-object v2, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 123
    iget-object v2, v0, Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 125
    :cond_1
    iget-object v2, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, v0, Lnet/veritran/component/VTProgressBar;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lnet/veritran/component/VTProgressBar;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 130
    .end local v0    # "progressBar":Lnet/veritran/component/VTProgressBar;
    :cond_2
    sget-object v1, Lnet/veritran/component/VTProgressBar;->dictAreaNameVectorProgressBars:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3
    return-void
.end method

.method private updateAutoDump()V
    .locals 10

    .prologue
    .line 410
    iget v5, p0, Lnet/veritran/component/VTProgressBar;->timeMillies:I

    div-int/lit16 v4, v5, 0x3e8

    .line 411
    .local v4, "timeMax":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lnet/veritran/component/VTProgressBar;->initialTimeMillis:J

    sub-long v2, v6, v8

    .line 413
    .local v2, "elapsedMillis":J
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    long-to-int v0, v6

    .line 415
    .local v0, "elapsed":I
    if-le v0, v4, :cond_0

    .line 417
    move v0, v4

    .line 420
    :cond_0
    sub-int v1, v4, v0

    .line 422
    .local v1, "remaining":I
    iget v5, p0, Lnet/veritran/component/VTProgressBar;->lastElapsed:I

    if-eq v0, v5, :cond_2

    .line 424
    iput v0, p0, Lnet/veritran/component/VTProgressBar;->lastElapsed:I

    .line 426
    sget-object v5, Lnet/veritran/component/VTProgressBar$3;->$SwitchMap$net$veritran$component$VTProgressBar$AutoDumpFormat:[I

    iget-object v6, p0, Lnet/veritran/component/VTProgressBar;->format:Lnet/veritran/component/VTProgressBar$AutoDumpFormat;

    invoke-virtual {v6}, Lnet/veritran/component/VTProgressBar$AutoDumpFormat;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 441
    :goto_0
    iget-object v5, p0, Lnet/veritran/component/VTProgressBar;->autoDump:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 443
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v5

    iget-object v6, p0, Lnet/veritran/component/VTProgressBar;->autoDump:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lnet/veritran/component/VTProgressBar;->timeFormatted:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 446
    :cond_1
    iget-object v5, p0, Lnet/veritran/component/VTProgressBar;->onTick:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lnet/veritran/component/VTProgressBar;->onTick:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 448
    iget-object v5, p0, Lnet/veritran/component/VTProgressBar;->handlerMainThread:Landroid/os/Handler;

    iget-object v6, p0, Lnet/veritran/component/VTProgressBar;->runOnTick:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    :cond_2
    return-void

    .line 428
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/veritran/component/VTProgressBar;->timeFormatted:Ljava/lang/String;

    goto :goto_0

    .line 431
    :pswitch_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/veritran/component/VTProgressBar;->timeFormatted:Ljava/lang/String;

    goto :goto_0

    .line 434
    :pswitch_2
    invoke-direct {p0, v0}, Lnet/veritran/component/VTProgressBar;->formatTime(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/veritran/component/VTProgressBar;->timeFormatted:Ljava/lang/String;

    goto :goto_0

    .line 437
    :pswitch_3
    invoke-direct {p0, v1}, Lnet/veritran/component/VTProgressBar;->formatTime(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/veritran/component/VTProgressBar;->timeFormatted:Ljava/lang/String;

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public executeEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lnet/veritran/component/VTProgressBar;->checkEventType(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lnet/veritran/component/VTProgressBar;->isRefreshEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0}, Lnet/veritran/component/VTProgressBar;->initProgressBar()V

    .line 145
    invoke-virtual {p0}, Lnet/veritran/component/VTProgressBar;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/veritran/component/VTProgressBar;->refreshMeasure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lnet/veritran/component/VTProgressBar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 147
    invoke-virtual {p0}, Lnet/veritran/component/VTProgressBar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 153
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lnet/veritran/component/VTProgressBar;->isCircleProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lnet/veritran/component/VTUIComponent;->init()V

    .line 180
    invoke-direct {p0}, Lnet/veritran/component/VTProgressBar;->initProgressBar()V

    .line 181
    return-void
.end method

.method public keepStatusesToBundle()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method public restoreStatusFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 530
    const-string v0, "BUNDLE_INITIAL_TIME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/veritran/component/VTProgressBar;->initialTimeMillis:J

    .line 531
    return-void
.end method

.method public saveStatusToBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 525
    const-string v0, "BUNDLE_INITIAL_TIME"

    iget-wide v2, p0, Lnet/veritran/component/VTProgressBar;->initialTimeMillis:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 526
    return-void
.end method

.method public supportEvents()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method
