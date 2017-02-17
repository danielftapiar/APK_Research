.class Lnet/veritran/component/VTProgressBar$ProgressTimerTask;
.super Ljava/util/TimerTask;
.source "VTProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/component/VTProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTProgressBar;


# direct methods
.method private constructor <init>(Lnet/veritran/component/VTProgressBar;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/veritran/component/VTProgressBar;Lnet/veritran/component/VTProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/veritran/component/VTProgressBar;
    .param p2, "x1"    # Lnet/veritran/component/VTProgressBar$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;-><init>(Lnet/veritran/component/VTProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x258

    .line 459
    iget-object v4, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # invokes: Lnet/veritran/component/VTProgressBar;->updateAutoDump()V
    invoke-static {v4}, Lnet/veritran/component/VTProgressBar;->access$300(Lnet/veritran/component/VTProgressBar;)V

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->initialTimeMillis:J
    invoke-static {v6}, Lnet/veritran/component/VTProgressBar;->access$400(Lnet/veritran/component/VTProgressBar;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 463
    .local v0, "elapsedMillis":J
    iget-object v4, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->timeMillies:I
    invoke-static {v4}, Lnet/veritran/component/VTProgressBar;->access$500(Lnet/veritran/component/VTProgressBar;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 464
    const-wide/16 v4, 0x258

    mul-long/2addr v4, v0

    iget-object v6, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->timeMillies:I
    invoke-static {v6}, Lnet/veritran/component/VTProgressBar;->access$500(Lnet/veritran/component/VTProgressBar;)I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v2, v4

    .line 466
    .local v2, "progress":I
    iget-object v4, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # invokes: Lnet/veritran/component/VTProgressBar;->isCircleProgress()Z
    invoke-static {v4}, Lnet/veritran/component/VTProgressBar;->access$600(Lnet/veritran/component/VTProgressBar;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 468
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->direction:Ljava/lang/String;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$700(Lnet/veritran/component/VTProgressBar;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    rsub-int v2, v2, 0x258

    .line 473
    :cond_0
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$800(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/view/VTProgressBarView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/veritran/component/view/VTProgressBarView;->setProgress(I)V

    .line 514
    .end local v2    # "progress":I
    :cond_1
    :goto_0
    return-void

    .line 477
    .restart local v2    # "progress":I
    :cond_2
    iget-object v4, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;
    invoke-static {v4}, Lnet/veritran/component/VTProgressBar;->access$1000(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/view/VTProgressCircleView;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->type:Lnet/veritran/component/VTProgressBar$ProgressType;
    invoke-static {v5}, Lnet/veritran/component/VTProgressBar;->access$900(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/VTProgressBar$ProgressType;

    move-result-object v5

    sget-object v6, Lnet/veritran/component/VTProgressBar$ProgressType;->TEXT_CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    if-ne v5, v6, :cond_3

    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    iget-object v3, v3, Lnet/veritran/component/VTProgressBar;->timeFormatted:Ljava/lang/String;

    :cond_3
    invoke-virtual {v4, v2, v3}, Lnet/veritran/component/view/VTProgressCircleView;->setProgress(ILjava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v2    # "progress":I
    :cond_4
    iget-object v4, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # invokes: Lnet/veritran/component/VTProgressBar;->isCircleProgress()Z
    invoke-static {v4}, Lnet/veritran/component/VTProgressBar;->access$600(Lnet/veritran/component/VTProgressBar;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 483
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->direction:Ljava/lang/String;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$700(Lnet/veritran/component/VTProgressBar;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 485
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$800(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/view/VTProgressBarView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/veritran/component/view/VTProgressBarView;->setProgress(I)V

    .line 498
    :goto_1
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$1100(Lnet/veritran/component/VTProgressBar;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 499
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->timer:Ljava/util/Timer;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$1100(Lnet/veritran/component/VTProgressBar;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 502
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->next:Ljava/lang/String;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$100(Lnet/veritran/component/VTProgressBar;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->next:Ljava/lang/String;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$100(Lnet/veritran/component/VTProgressBar;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    invoke-virtual {v3}, Lnet/veritran/component/VTProgressBar;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v3

    new-instance v4, Lnet/veritran/component/VTProgressBar$ProgressTimerTask$1;

    invoke-direct {v4, p0}, Lnet/veritran/component/VTProgressBar$ProgressTimerTask$1;-><init>(Lnet/veritran/component/VTProgressBar$ProgressTimerTask;)V

    invoke-virtual {v3, v4}, Lnet/veritran/VTCommonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 489
    :cond_5
    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->vtProgressBarView:Lnet/veritran/component/view/VTProgressBarView;
    invoke-static {v3}, Lnet/veritran/component/VTProgressBar;->access$800(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/view/VTProgressBarView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lnet/veritran/component/view/VTProgressBarView;->setProgress(I)V

    goto :goto_1

    .line 494
    :cond_6
    iget-object v4, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->vtProgressCircleView:Lnet/veritran/component/view/VTProgressCircleView;
    invoke-static {v4}, Lnet/veritran/component/VTProgressBar;->access$1000(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/view/VTProgressCircleView;

    move-result-object v4

    iget-object v5, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    # getter for: Lnet/veritran/component/VTProgressBar;->type:Lnet/veritran/component/VTProgressBar$ProgressType;
    invoke-static {v5}, Lnet/veritran/component/VTProgressBar;->access$900(Lnet/veritran/component/VTProgressBar;)Lnet/veritran/component/VTProgressBar$ProgressType;

    move-result-object v5

    sget-object v6, Lnet/veritran/component/VTProgressBar$ProgressType;->TEXT_CLOCK:Lnet/veritran/component/VTProgressBar$ProgressType;

    if-ne v5, v6, :cond_7

    iget-object v3, p0, Lnet/veritran/component/VTProgressBar$ProgressTimerTask;->this$0:Lnet/veritran/component/VTProgressBar;

    iget-object v3, v3, Lnet/veritran/component/VTProgressBar;->timeFormatted:Ljava/lang/String;

    :cond_7
    invoke-virtual {v4, v8, v3}, Lnet/veritran/component/view/VTProgressCircleView;->setProgress(ILjava/lang/String;)V

    goto :goto_1
.end method
