.class Lcl/santander/smartphone/PagoOnlineConfirm$2;
.super Ljava/lang/Object;
.source "PagoOnlineConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PagoOnlineConfirm;->realizarPago()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PagoOnlineConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PagoOnlineConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnlineConfirm$2;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineConfirm$2;->this$0:Lcl/santander/smartphone/PagoOnlineConfirm;

    # invokes: Lcl/santander/smartphone/PagoOnlineConfirm;->desafioDetallePago()V
    invoke-static {v0}, Lcl/santander/smartphone/PagoOnlineConfirm;->access$0(Lcl/santander/smartphone/PagoOnlineConfirm;)V

    .line 207
    return-void
.end method
