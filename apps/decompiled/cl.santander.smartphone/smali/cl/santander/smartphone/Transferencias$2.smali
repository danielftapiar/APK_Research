.class Lcl/santander/smartphone/Transferencias$2;
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
    iput-object p1, p0, Lcl/santander/smartphone/Transferencias$2;->this$0:Lcl/santander/smartphone/Transferencias;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias$2;->this$0:Lcl/santander/smartphone/Transferencias;

    iget v0, v0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    if-eq v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias$2;->this$0:Lcl/santander/smartphone/Transferencias;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/Transferencias;->setTransferType(I)V

    .line 186
    :cond_0
    return-void
.end method
