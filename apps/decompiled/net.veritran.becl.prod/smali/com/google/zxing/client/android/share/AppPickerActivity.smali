.class public final Lcom/google/zxing/client/android/share/AppPickerActivity;
.super Landroid/app/ListActivity;
.source "AppPickerActivity.java"


# instance fields
.field private backgroundTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/zxing/client/android/share/AppPickerActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 52
    .local v0, "adapter":Landroid/widget/Adapter;
    if-ltz p3, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 53
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/client/android/share/AppInfo;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/share/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    const-string v3, "url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/client/android/share/AppPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/share/AppPickerActivity;->finish()V

    .line 62
    return-void

    .line 59
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/share/AppPickerActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->backgroundTask:Landroid/os/AsyncTask;

    .line 42
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->backgroundTask:Landroid/os/AsyncTask;

    .line 46
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 35
    new-instance v0, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/share/LoadPackagesAsyncTask;-><init>(Landroid/app/ListActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->backgroundTask:Landroid/os/AsyncTask;

    .line 36
    iget-object v0, p0, Lcom/google/zxing/client/android/share/AppPickerActivity;->backgroundTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTAndroidSupport;->executeOnThreadPoolExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method
