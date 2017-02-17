.class final Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$1;
.super Ljava/lang/Object;
.source "ServiciosFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onQueryTextChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    # getter for: Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->doSearch:Z
    invoke-static {v1}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->access$1(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    const-string v1, "ServiciosFragment"

    const-string v2, "doSearch false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return v3

    .line 92
    :cond_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$1;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 93
    .local v0, "l":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 94
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 95
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ListView;->clearTextFilter()V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onQueryTextSubmit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    return v0
.end method
