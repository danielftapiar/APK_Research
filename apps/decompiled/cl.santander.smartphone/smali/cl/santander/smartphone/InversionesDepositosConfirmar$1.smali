.class Lcl/santander/smartphone/InversionesDepositosConfirmar$1;
.super Ljava/lang/Object;
.source "InversionesDepositosConfirmar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesDepositosConfirmar;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar$1;->this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar$1;->this$0:Lcl/santander/smartphone/InversionesDepositosConfirmar;

    # invokes: Lcl/santander/smartphone/InversionesDepositosConfirmar;->Confirmar()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->access$0(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    .line 199
    return-void
.end method
