.class Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$1;
.super Ljava/lang/Object;
.source "InversionesDepositosCobrarConfirmar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$1;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$1;->this$0:Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;

    # invokes: Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->Confirmar()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->access$0(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    .line 184
    return-void
.end method
