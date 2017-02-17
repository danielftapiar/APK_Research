.class Lcom/prey/actions/Mp3PlayerAction$Mp3OnCompletionListener;
.super Ljava/lang/Object;
.source "Mp3PlayerAction.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/actions/Mp3PlayerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Mp3OnCompletionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/actions/Mp3PlayerAction;


# direct methods
.method constructor <init>(Lcom/prey/actions/Mp3PlayerAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/actions/Mp3PlayerAction;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/prey/actions/Mp3PlayerAction$Mp3OnCompletionListener;->this$0:Lcom/prey/actions/Mp3PlayerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 73
    return-void
.end method
