.class Lcl/santander/smartphone/Transferencias$4;
.super Ljava/lang/Object;
.source "Transferencias.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Transferencias;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Transferencias;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Transferencias;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Transferencias$4;->this$0:Lcl/santander/smartphone/Transferencias;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias$4;->this$0:Lcl/santander/smartphone/Transferencias;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias$4;->this$0:Lcl/santander/smartphone/Transferencias;

    iget v1, v1, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/Transferencias;->startTransfer(I)V

    .line 203
    return-void
.end method
