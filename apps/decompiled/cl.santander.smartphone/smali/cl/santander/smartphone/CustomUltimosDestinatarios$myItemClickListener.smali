.class Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;
.super Ljava/lang/Object;
.source "CustomUltimosDestinatarios.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/CustomUltimosDestinatarios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/CustomUltimosDestinatarios;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/CustomUltimosDestinatarios;Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;-><init>(Lcl/santander/smartphone/CustomUltimosDestinatarios;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->ultimas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$0(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemUltTransf;

    invoke-static {v1, v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$1(Lcl/santander/smartphone/CustomUltimosDestinatarios;Lcl/santander/santanderCL/data/response/ItemUltTransf;)V

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->itemClick:Ljava/lang/Runnable;
    invoke-static {v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$2(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    # getter for: Lcl/santander/smartphone/CustomUltimosDestinatarios;->itemClick:Ljava/lang/Runnable;
    invoke-static {v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->access$2(Lcl/santander/smartphone/CustomUltimosDestinatarios;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/CustomUltimosDestinatarios$myItemClickListener;->this$0:Lcl/santander/smartphone/CustomUltimosDestinatarios;

    invoke-virtual {v0}, Lcl/santander/smartphone/CustomUltimosDestinatarios;->dismiss()V

    .line 99
    return-void
.end method
