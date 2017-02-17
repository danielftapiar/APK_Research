.class Lcl/santander/smartphone/PosicionGlobal$2;
.super Ljava/lang/Object;
.source "PosicionGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PosicionGlobal;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PosicionGlobal;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PosicionGlobal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PosicionGlobal$2;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$2;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    invoke-virtual {v0}, Lcl/santander/smartphone/PosicionGlobal;->loadProducts()V

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$2;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->ll_creditoconsumo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$2;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$2;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$2;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method
