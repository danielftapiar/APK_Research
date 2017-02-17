.class public Lnet/hockeyapp/android/internal/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# instance fields
.field listener:Lnet/hockeyapp/android/UpdateInfoListener;

.field newest:Lorg/json/JSONObject;

.field sortedVersions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/hockeyapp/android/UpdateInfoListener;)V
    .locals 0
    .param p1, "infoJSON"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/UpdateInfoListener;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lnet/hockeyapp/android/internal/VersionHelper;->listener:Lnet/hockeyapp/android/UpdateInfoListener;

    .line 58
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/internal/VersionHelper;->loadVersions(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lnet/hockeyapp/android/internal/VersionHelper;->sortVersions()V

    .line 60
    return-void
.end method

.method private static failSafeGetIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 125
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 124
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private static failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 116
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 115
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method private getVersionLine(ILorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "count"    # I
    .param p2, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 151
    .local v2, "versionCode":I
    const-string v3, ""

    .line 153
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    const-string v4, "version"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    const-string v4, "shortversion"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 159
    :goto_0
    const-string v4, "<div style=\'padding: 20px 10px 10px;\'><strong>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    if-nez p1, :cond_0

    .line 161
    const-string v4, "Release Notes:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_1
    const-string v4, "</strong></div>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 164
    :cond_0
    iget-object v4, p0, Lnet/hockeyapp/android/internal/VersionHelper;->listener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v4}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v0

    .line 165
    .local v0, "currentVersionCode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v2, v0, :cond_1

    const-string v4, "[INSTALLED]"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, ""

    goto :goto_2

    .line 156
    .end local v0    # "currentVersionCode":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .param p1, "count"    # I
    .param p2, "version"    # Lorg/json/JSONObject;

    .prologue
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "notes"

    const-string v3, ""

    invoke-static {p2, v2, v3}, Lnet/hockeyapp/android/internal/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "notes":Ljava/lang/String;
    const-string v2, "<div style=\'padding: 0px 10px;\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 178
    const-string v2, "<em>No information.</em>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :goto_0
    const-string v2, "</div>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 181
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private loadVersions(Ljava/lang/String;)V
    .locals 5
    .param p1, "infoJSON"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lnet/hockeyapp/android/internal/VersionHelper;->newest:Lorg/json/JSONObject;

    .line 66
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "versions":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lnet/hockeyapp/android/internal/VersionHelper;->sortedVersions:Ljava/util/ArrayList;

    .line 69
    iget-object v4, p0, Lnet/hockeyapp/android/internal/VersionHelper;->listener:Lnet/hockeyapp/android/UpdateInfoListener;

    invoke-interface {v4}, Lnet/hockeyapp/android/UpdateInfoListener;->getCurrentVersionCode()I

    move-result v2

    .line 70
    .local v2, "versionCode":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 71
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    .local v0, "entry":Lorg/json/JSONObject;
    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_0

    .line 73
    iput-object v0, p0, Lnet/hockeyapp/android/internal/VersionHelper;->newest:Lorg/json/JSONObject;

    .line 74
    const-string v4, "version"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 76
    :cond_0
    iget-object v4, p0, Lnet/hockeyapp/android/internal/VersionHelper;->sortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "entry":Lorg/json/JSONObject;
    .end local v1    # "index":I
    .end local v2    # "versionCode":I
    .end local v3    # "versions":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 81
    :cond_1
    return-void
.end method

.method private sortVersions()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lnet/hockeyapp/android/internal/VersionHelper;->sortedVersions:Ljava/util/ArrayList;

    new-instance v1, Lnet/hockeyapp/android/internal/VersionHelper$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/internal/VersionHelper$1;-><init>(Lnet/hockeyapp/android/internal/VersionHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getFileInfoString()Ljava/lang/String;
    .locals 11

    .prologue
    const/high16 v10, 0x44800000    # 1024.0f

    const/4 v9, 0x0

    .line 104
    iget-object v5, p0, Lnet/hockeyapp/android/internal/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v6, "appsize"

    invoke-static {v5, v6, v9}, Lnet/hockeyapp/android/internal/VersionHelper;->failSafeGetIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 105
    .local v0, "appSize":I
    iget-object v5, p0, Lnet/hockeyapp/android/internal/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v6, "timestamp"

    invoke-static {v5, v6, v9}, Lnet/hockeyapp/android/internal/VersionHelper;->failSafeGetIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    int-to-long v3, v5

    .line 106
    .local v3, "timestamp":J
    new-instance v1, Ljava/util/Date;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v3

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 107
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "dd.MM.yyyy"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    int-to-float v8, v0

    div-float/2addr v8, v10

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getReleaseNotes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v2, "result":Ljava/lang/StringBuilder;
    const-string v4, "<html>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v4, "<body style=\'padding: 0px 0px 10px 0px\'>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "count":I
    iget-object v4, p0, Lnet/hockeyapp/android/internal/VersionHelper;->sortedVersions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 136
    .local v3, "version":Lorg/json/JSONObject;
    invoke-direct {p0, v0, v3}, Lnet/hockeyapp/android/internal/VersionHelper;->getVersionLine(ILorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {p0, v0, v3}, Lnet/hockeyapp/android/internal/VersionHelper;->getVersionNotes(ILorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "version":Lorg/json/JSONObject;
    :cond_0
    const-string v4, "</body>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v4, "</html>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/hockeyapp/android/internal/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v2, "shortversion"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/internal/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/internal/VersionHelper;->newest:Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lnet/hockeyapp/android/internal/VersionHelper;->failSafeGetStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
