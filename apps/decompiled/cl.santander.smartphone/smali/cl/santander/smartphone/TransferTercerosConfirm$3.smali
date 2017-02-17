.class Lcl/santander/smartphone/TransferTercerosConfirm$3;
.super Ljava/lang/Object;
.source "TransferTercerosConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferTercerosConfirm;->validaSuperClave()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferTercerosConfirm;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferTercerosConfirm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferTercerosConfirm$3;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcl/santander/smartphone/TransferTercerosConfirm$3;->this$0:Lcl/santander/smartphone/TransferTercerosConfirm;

    # invokes: Lcl/santander/smartphone/TransferTercerosConfirm;->desafioTerceros()V
    invoke-static {v0}, Lcl/santander/smartphone/TransferTercerosConfirm;->access$1(Lcl/santander/smartphone/TransferTercerosConfirm;)V

    .line 403
    return-void
.end method
