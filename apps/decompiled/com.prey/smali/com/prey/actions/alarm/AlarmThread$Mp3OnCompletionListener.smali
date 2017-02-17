.class Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;
.super Ljava/lang/Object;
.source "AlarmThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/actions/alarm/AlarmThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mp3OnCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/actions/alarm/AlarmThread;


# direct methods
.method constructor <init>(Lcom/prey/actions/alarm/AlarmThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/actions/alarm/AlarmThread;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/prey/actions/alarm/AlarmThread$Mp3OnCompletionListener;->this$0:Lcom/prey/actions/alarm/AlarmThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 84
    const-string v0, "stop alarm"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/prey/PreyStatus;->getInstance()Lcom/prey/PreyStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prey/PreyStatus;->setAlarmStop()V

    .line 86
    return-void
.end method
