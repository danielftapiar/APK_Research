.class final Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$3;
.super Ljava/lang/Object;
.source "BalloonItemizedOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->createAndDisplayBalloonOverlay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;


# direct methods
.method constructor <init>(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$3;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$3;->this$0:Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    invoke-virtual {v0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->hideBalloon()V

    .line 296
    return-void
.end method
