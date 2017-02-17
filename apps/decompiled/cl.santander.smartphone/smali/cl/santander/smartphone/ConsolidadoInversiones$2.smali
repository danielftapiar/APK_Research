.class Lcl/santander/smartphone/ConsolidadoInversiones$2;
.super Ljava/lang/Object;
.source "ConsolidadoInversiones.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/ConsolidadoInversiones;->loadProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/ConsolidadoInversiones;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/ConsolidadoInversiones;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones$2;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones$2;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v0, v0, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$0(I)V

    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones$2;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v0, v0, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    # getter for: Lcl/santander/smartphone/ConsolidadoInversiones;->longitudIndicator:I
    invoke-static {}, Lcl/santander/smartphone/ConsolidadoInversiones;->access$1()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 189
    return-void
.end method
