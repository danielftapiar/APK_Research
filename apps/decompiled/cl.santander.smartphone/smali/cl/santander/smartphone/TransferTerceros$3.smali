.class Lcl/santander/smartphone/TransferTerceros$3;
.super Ljava/lang/Object;
.source "TransferTerceros.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/TransferTerceros;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/TransferTerceros;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/TransferTerceros;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/TransferTerceros$3;->this$0:Lcl/santander/smartphone/TransferTerceros;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 165
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros$3;->this$0:Lcl/santander/smartphone/TransferTerceros;

    # invokes: Lcl/santander/smartphone/TransferTerceros;->cambiaEstadoBoton()V
    invoke-static {v0}, Lcl/santander/smartphone/TransferTerceros;->access$0(Lcl/santander/smartphone/TransferTerceros;)V

    .line 158
    return-void
.end method
