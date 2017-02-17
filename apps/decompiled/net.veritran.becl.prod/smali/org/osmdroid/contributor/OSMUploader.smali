.class public Lorg/osmdroid/contributor/OSMUploader;
.super Ljava/lang/Object;
.source "OSMUploader.java"

# interfaces
.implements Lorg/osmdroid/contributor/util/constants/OpenStreetMapContributorConstants;


# static fields
.field public static final API_VERSION:Ljava/lang/String; = "0.5"

.field private static final BASE64_ENC:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field private static final BOUNDARY:Ljava/lang/String; = "----------------------------d10f7aa230e8"

.field private static final BUFFER_SIZE:I = 0xffff

.field private static final DEFAULT_DESCRIPTION:Ljava/lang/String; = "AndNav - automatically created route."

.field private static final DEFAULT_TAGS:Ljava/lang/String; = "AndNav"

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final autoTagFormat:Ljava/text/SimpleDateFormat;

.field public static final pseudoFileNameFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'_\'HHmmss\'_\'SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/contributor/OSMUploader;->pseudoFileNameFormat:Ljava/text/SimpleDateFormat;

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/osmdroid/contributor/OSMUploader;->autoTagFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/osmdroid/contributor/OSMUploader;->autoTagFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lorg/osmdroid/contributor/OSMUploader;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/DataOutputStream;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/InputStream;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Lorg/osmdroid/contributor/OSMUploader;->writeContentDispositionFile(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/DataOutputStream;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lorg/osmdroid/contributor/OSMUploader;->writeContentDisposition(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x3d

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v3, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    if-ge v1, v4, :cond_4

    .line 265
    const/4 v4, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v8, v1, 0x3

    sub-int/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 266
    .local v2, "l":I
    mul-int/lit8 v4, v1, 0x3

    mul-int/lit8 v7, v1, 0x3

    add-int/2addr v7, v2

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "buf":Ljava/lang/String;
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    shr-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v8, v4, 0x4

    if-ne v2, v9, :cond_0

    move v4, v5

    :goto_1
    or-int/2addr v4, v8

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    if-le v2, v9, :cond_2

    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v8, v4, 0x2

    if-ne v2, v10, :cond_1

    move v4, v5

    :goto_2
    or-int/2addr v4, v8

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    if-le v2, v10, :cond_3

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    and-int/lit8 v7, v7, 0x3f

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 270
    :cond_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xc0

    shr-int/lit8 v4, v4, 0x6

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_3

    :cond_3
    move v4, v6

    .line 272
    goto :goto_4

    .line 274
    .end local v0    # "buf":Ljava/lang/String;
    .end local v2    # "l":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;
    .param p4, "addDateTags"    # Z
    .param p6, "pseudoFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/contributor/util/RecordedGeoPoint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    .local p5, "recordedGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/contributor/util/RecordedGeoPoint;>;"
    invoke-static/range {p0 .. p6}, Lorg/osmdroid/contributor/OSMUploader;->uploadAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static uploadAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tags"    # Ljava/lang/String;
    .param p4, "addDateTags"    # Z
    .param p6, "pseudoFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/contributor/util/RecordedGeoPoint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p5, "recordedGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/contributor/util/RecordedGeoPoint;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    if-eqz p6, :cond_0

    const-string v0, ".gpx"

    invoke-virtual {p6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lorg/osmdroid/contributor/OSMUploader$1;

    move-object v1, p5

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/contributor/OSMUploader$1;-><init>(Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OSMUpload-Thread"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static uploadAsync(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 7
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "tags"    # Ljava/lang/String;
    .param p2, "addDateTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/contributor/util/RecordedGeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "recordedGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/contributor/util/RecordedGeoPoint;>;"
    const-string v0, "PUT_YOUR_USERNAME_HERE"

    const-string v1, "PUT_YOUR_PASSWORD_HERE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/osmdroid/contributor/OSMUploader;->pseudoFileNameFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PUT_YOUR_USERNAME_HERE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".gpx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lorg/osmdroid/contributor/OSMUploader;->uploadAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static uploadAsync(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/contributor/util/RecordedGeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "recordedGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/contributor/util/RecordedGeoPoint;>;"
    const-string v0, "AndNav - automatically created route."

    const-string v1, "AndNav"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Lorg/osmdroid/contributor/OSMUploader;->uploadAsync(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 81
    return-void
.end method

.method private static writeContentDisposition(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v0, "------------------------------d10f7aa230e8\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 258
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private static writeContentDispositionFile(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gpxInputStream"    # Ljava/io/InputStream;
    .param p3, "pseudoFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const-string v4, "------------------------------d10f7aa230e8\r\n"

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Disposition: form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"; filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 231
    const-string v4, "Content-Type: application/octet-stream\r\n"

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 232
    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 234
    const v4, 0xffff

    new-array v0, v4, [B

    .line 237
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 238
    .local v3, "sumread":I
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 240
    .local v1, "in":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    if-ltz v2, :cond_0

    .line 241
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 242
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    .line 243
    add-int/2addr v3, v2

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 246
    const-string v4, "\r\n"

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 247
    return-void
.end method
