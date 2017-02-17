.class public final Lde/viktorreiser/toolbox/util/SmbUtils;
.super Ljava/lang/Object;
.source "SmbUtils.java"


# static fields
.field private static IP_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "^[0-9]{1,3}(\\.[0-9]{1,3}){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/viktorreiser/toolbox/util/SmbUtils;->IP_PATTERN:Ljava/util/regex/Pattern;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method public static encodeAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "auth":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbFile;
    .locals 9
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v3, "realPath":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "trimmedPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 133
    .local v5, "trimmedPathLength":I
    if-eqz v5, :cond_0

    .line 134
    const-string v6, "/+"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "folders":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 145
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_0

    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 151
    .end local v1    # "folders":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    :try_start_0
    new-instance v6, Ljcifs/smb/SmbFile;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "smb://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 138
    .restart local v1    # "folders":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 139
    aget-object v6, v1, v2

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "folders":[Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbFile;
    .locals 1
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p0, p1}, Lde/viktorreiser/toolbox/util/SmbUtils;->encodeAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lde/viktorreiser/toolbox/util/SmbUtils;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public static isAccessDenied(Ljcifs/smb/SmbException;)Z
    .locals 2
    .param p0, "e"    # Ljcifs/smb/SmbException;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const v1, -0x3fffffde    # -2.000008f

    if-eq v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const v1, -0x3fffff96    # -2.0000253f

    if-eq v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const v1, -0x3fffff93    # -2.000026f

    if-eq v0, v1, :cond_0

    .line 45
    invoke-virtual {p0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const v1, -0x3fffff9c    # -2.0000238f

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 42
    goto :goto_0
.end method

.method public static isHostUnreachable(Ljcifs/smb/SmbException;)Z
    .locals 2
    .param p0, "e"    # Ljcifs/smb/SmbException;

    .prologue
    .line 57
    invoke-virtual {p0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const v1, -0x3fffffff    # -2.0000002f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listAvailableHosts(Z)[Ljava/lang/String;
    .locals 11
    .param p0, "withIp"    # Z

    .prologue
    const/4 v10, 0x0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, "hostNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v8, Ljcifs/smb/SmbFile;

    const-string v9, "smb://"

    invoke-direct {v8, v9}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v7

    .line 81
    .local v7, "workgroups":[Ljcifs/smb/SmbFile;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v8, :cond_0

    .line 111
    .end local v3    # "i":I
    .end local v7    # "workgroups":[Ljcifs/smb/SmbFile;
    :goto_1
    new-array v8, v10, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 113
    .local v2, "hosts":[Ljava/lang/String;
    return-object v2

    .line 83
    .end local v2    # "hosts":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v7    # "workgroups":[Ljcifs/smb/SmbFile;
    :cond_0
    :try_start_1
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v2

    .line 86
    .local v2, "hosts":[Ljcifs/smb/SmbFile;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v8, v2

    if-lt v4, v8, :cond_1

    .line 81
    .end local v2    # "hosts":[Ljcifs/smb/SmbFile;
    .end local v4    # "j":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .restart local v2    # "hosts":[Ljcifs/smb/SmbFile;
    .restart local v4    # "j":I
    :cond_1
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "nameWithoutSlash":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    if-eqz p0, :cond_2

    sget-object v8, Lde/viktorreiser/toolbox/util/SmbUtils;->IP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-nez v8, :cond_2

    .line 93
    :try_start_2
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 94
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    :cond_2
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 106
    .end local v2    # "hosts":[Ljcifs/smb/SmbFile;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nameWithoutSlash":Ljava/lang/String;
    .end local v7    # "workgroups":[Ljcifs/smb/SmbFile;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 104
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v8

    goto :goto_1

    .line 100
    .restart local v3    # "i":I
    .restart local v7    # "workgroups":[Ljcifs/smb/SmbFile;
    :catch_2
    move-exception v8

    goto :goto_3

    .line 95
    .restart local v2    # "hosts":[Ljcifs/smb/SmbFile;
    .restart local v4    # "j":I
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "nameWithoutSlash":Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_4
.end method
