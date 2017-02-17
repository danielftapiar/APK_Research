.class Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation$1;
.super Ljava/lang/Object;
.source "ColdStartPrimingInformation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;


# direct methods
.method constructor <init>(Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;Z)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation$1;->b:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    iput-boolean p2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation$1;->b:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    iget-boolean v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a(Z)V

    .line 361
    return-void
.end method
