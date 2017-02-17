.class final Lorg/osmdroid/contributor/OSMUploader$1;
.super Ljava/lang/Object;
.source "OSMUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/contributor/OSMUploader;->uploadAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addDateTags:Z

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$pseudoFileName:Ljava/lang/String;

.field final synthetic val$recordedGeoPoints:Ljava/util/ArrayList;

.field final synthetic val$tags:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$recordedGeoPoints:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$tags:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$addDateTags:Z

    iput-object p4, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$description:Ljava/lang/String;

    iput-object p5, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$username:Ljava/lang/String;

    iput-object p6, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$password:Ljava/lang/String;

    iput-object p7, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$pseudoFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 142
    iget-object v9, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$recordedGeoPoints:Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/osmdroid/contributor/util/Util;->isSufficienDataForUpload(Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 207
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v9, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$recordedGeoPoints:Ljava/util/ArrayList;

    invoke-static {v9}, Lorg/osmdroid/contributor/util/RecordedRouteGPXFormatter;->create(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 148
    .local v1, "gpxInputStream":Ljava/io/InputStream;
    iget-object v5, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$tags:Ljava/lang/String;

    .line 149
    .local v5, "tagsToUse":Ljava/lang/String;
    iget-boolean v9, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$addDateTags:Z

    if-nez v9, :cond_1

    if-nez v5, :cond_2

    .line 150
    :cond_1
    if-nez v5, :cond_4

    .line 151
    # getter for: Lorg/osmdroid/contributor/OSMUploader;->autoTagFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lorg/osmdroid/contributor/OSMUploader;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v10}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 160
    :cond_2
    :goto_1
    :try_start_0
    iget-object v9, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$description:Ljava/lang/String;

    if-nez v9, :cond_5

    const-string v7, "AndNav - automatically created route."

    .line 162
    .local v7, "urlDesc":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_6

    const-string v8, "AndNav"

    .line 164
    .local v8, "urlTags":Ljava/lang/String;
    :goto_3
    new-instance v6, Ljava/net/URL;

    const-string v9, "http://www.openstreetmap.org/api/0.5/gpx/create"

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 168
    .local v0, "con":Ljava/net/HttpURLConnection;
    const/16 v9, 0x3a98

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 169
    const-string v9, "POST"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 170
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 171
    const-string v9, "Authorization"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Basic "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$username:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$password:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lorg/osmdroid/contributor/OSMUploader;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v11}, Lorg/osmdroid/contributor/OSMUploader;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v9, "Content-Type"

    const-string v10, "multipart/form-data; boundary=----------------------------d10f7aa230e8"

    invoke-virtual {v0, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v9, "Connection"

    const-string v10, "close"

    invoke-virtual {v0, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v9, "Expect"

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 179
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    .local v2, "out":Ljava/io/DataOutputStream;
    const-string v9, "file"

    iget-object v10, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$pseudoFileName:Ljava/lang/String;

    # invokes: Lorg/osmdroid/contributor/OSMUploader;->writeContentDispositionFile(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    invoke-static {v2, v9, v1, v10}, Lorg/osmdroid/contributor/OSMUploader;->access$200(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 184
    const-string v9, "description"

    # invokes: Lorg/osmdroid/contributor/OSMUploader;->writeContentDisposition(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v9, v7}, Lorg/osmdroid/contributor/OSMUploader;->access$300(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v9, "tags"

    # invokes: Lorg/osmdroid/contributor/OSMUploader;->writeContentDisposition(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v9, v8}, Lorg/osmdroid/contributor/OSMUploader;->access$300(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v9, "public"

    const-string v10, "1"

    # invokes: Lorg/osmdroid/contributor/OSMUploader;->writeContentDisposition(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v9, v10}, Lorg/osmdroid/contributor/OSMUploader;->access$300(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v9, "------------------------------d10f7aa230e8--\r\n"

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 192
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 193
    .local v3, "retCode":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "retMsg":Ljava/lang/String;
    const/16 v9, 0xc8

    if-eq v3, v9, :cond_7

    .line 197
    const-string v9, "Error"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Error"

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 200
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .end local v3    # "retCode":I
    .end local v4    # "retMsg":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "urlDesc":Ljava/lang/String;
    .end local v8    # "urlTags":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 153
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lorg/osmdroid/contributor/OSMUploader;->autoTagFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lorg/osmdroid/contributor/OSMUploader;->access$000()Ljava/text/SimpleDateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/GregorianCalendar;

    invoke-direct {v11}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 160
    :cond_5
    :try_start_1
    iget-object v9, p0, Lorg/osmdroid/contributor/OSMUploader$1;->val$description:Ljava/lang/String;

    const-string v10, "\\.;&?,/"

    const-string v11, "_"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 162
    .restart local v7    # "urlDesc":Ljava/lang/String;
    :cond_6
    const-string v9, "\\\\.;&?,/"

    const-string v10, "_"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 202
    .restart local v0    # "con":Ljava/net/HttpURLConnection;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "retCode":I
    .restart local v4    # "retMsg":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v8    # "urlTags":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 203
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
