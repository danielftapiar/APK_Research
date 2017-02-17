.class public Lnet/hockeyapp/android/UpdateActivity;
.super Landroid/app/Activity;
.source "UpdateActivity.java"

# interfaces
.implements Lnet/hockeyapp/android/UpdateActivityInterface;
.implements Lnet/hockeyapp/android/UpdateInfoListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

.field protected versionHelper:Lnet/hockeyapp/android/internal/VersionHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/UpdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lnet/hockeyapp/android/UpdateActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask()V

    return-void
.end method

.method private startDownloadTask()V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lnet/hockeyapp/android/UpdateActivity$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/UpdateActivity$1;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V

    invoke-virtual {p0, v0, v1}, Lnet/hockeyapp/android/UpdateActivity;->createDownloadTask(Ljava/lang/String;Lnet/hockeyapp/android/internal/DownloadFileListener;)V

    .line 154
    iget-object v1, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/internal/DownloadFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 155
    return-void
.end method


# virtual methods
.method protected configureView()V
    .locals 9

    .prologue
    .line 94
    const/16 v1, 0x1002

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 95
    .local v6, "nameLabel":Landroid/widget/TextView;
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/16 v1, 0x1003

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 98
    .local v8, "versionLabel":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/internal/VersionHelper;

    invoke-virtual {v2}, Lnet/hockeyapp/android/internal/VersionHelper;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/internal/VersionHelper;

    invoke-virtual {v2}, Lnet/hockeyapp/android/internal/VersionHelper;->getFileInfoString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/16 v1, 0x1004

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 101
    .local v7, "updateButton":Landroid/widget/Button;
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const/16 v1, 0x1005

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 104
    .local v0, "webView":Landroid/webkit/WebView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 105
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 106
    const-string v1, "https://sdk.hockeyapp.net/"

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/internal/VersionHelper;

    invoke-virtual {v2}, Lnet/hockeyapp/android/internal/VersionHelper;->getReleaseNotes()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected createDownloadTask(Ljava/lang/String;Lnet/hockeyapp/android/internal/DownloadFileListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/internal/DownloadFileListener;

    .prologue
    .line 158
    new-instance v0, Lnet/hockeyapp/android/internal/DownloadFileTask;

    invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/internal/DownloadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/internal/DownloadFileListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

    .line 159
    return-void
.end method

.method public enableUpdateButton()V
    .locals 2

    .prologue
    .line 165
    const/16 v1, 0x1004

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "updateButton":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 203
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 204
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 207
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_0
.end method

.method public getCurrentVersionCode()I
    .locals 4

    .prologue
    .line 175
    const/4 v0, -0x1

    .line 178
    .local v0, "currentVersionCode":I
    :try_start_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic getLayoutView()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lnet/hockeyapp/android/internal/UpdateView;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/internal/UpdateView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    invoke-direct {p0}, Lnet/hockeyapp/android/UpdateActivity;->startDownloadTask()V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "App Update"

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLayoutView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setContentView(Landroid/view/View;)V

    .line 80
    new-instance v0, Lnet/hockeyapp/android/internal/VersionHelper;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/hockeyapp/android/internal/VersionHelper;-><init>(Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->versionHelper:Lnet/hockeyapp/android/internal/VersionHelper;

    .line 81
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->configureView()V

    .line 83
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/internal/DownloadFileTask;

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

    .line 84
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/internal/DownloadFileTask;->attach(Landroid/content/Context;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/internal/DownloadFileTask;->detach()V

    .line 121
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->downloadTask:Lnet/hockeyapp/android/internal/DownloadFileTask;

    return-object v0
.end method
