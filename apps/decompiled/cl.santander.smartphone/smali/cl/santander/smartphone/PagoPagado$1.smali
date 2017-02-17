.class Lcl/santander/smartphone/PagoPagado$1;
.super Ljava/lang/Object;
.source "PagoPagado.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PagoPagado;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PagoPagado;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PagoPagado;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PagoPagado$1;->this$0:Lcl/santander/smartphone/PagoPagado;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado$1;->this$0:Lcl/santander/smartphone/PagoPagado;

    iget-object v0, v0, Lcl/santander/smartphone/PagoPagado;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 97
    return-void
.end method
