.class public Lcl/santander/smartphone/EstadoCuentaPDF;
.super Ljava/lang/Object;
.source "EstadoCuentaPDF.java"


# instance fields
.field private act:Landroid/app/Activity;

.field private cuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

.field private pdfURI:Landroid/net/Uri;

.field private pdf_bytes:[B


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "_Act"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    .line 46
    sget-object v0, Lcl/santander/smartphone/Global;->tarjetaEstadoCuentaVer:Lcl/santander/santanderCL/data/response/ItemProducto;

    iput-object v0, p0, Lcl/santander/smartphone/EstadoCuentaPDF;->cuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 47
    invoke-direct {p0}, Lcl/santander/smartphone/EstadoCuentaPDF;->verEstadoCuenta()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcl/santander/smartphone/EstadoCuentaPDF;->openPDF()V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/EstadoCuentaPDF;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    return-object v0
.end method

.method private openPDF()V
    .locals 6

    .prologue
    .line 116
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcl/santander/smartphone/EstadoCuentaPDF;->pdfURI:Landroid/net/Uri;

    const-string v4, "application/pdf"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 121
    :try_start_0
    iget-object v3, p0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    .line 126
    const-string v4, "No existe aplicaci\u00f3n para ver PDFs"

    .line 127
    const/4 v5, 0x0

    .line 125
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 129
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sancl.pdf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private verEstadoCuenta()Z
    .locals 17

    .prologue
    .line 145
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    const v3, 0x7f05002d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 147
    .local v5, "s":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 155
    .local v16, "resp":Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->cuenta:Lcl/santander/santanderCL/data/response/ItemProducto;

    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcl/santander/smartphone/ServicesManager;->ConsultaEstadoCuenta(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;)Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;

    move-result-object v16

    .line 157
    if-eqz v16, :cond_0

    .line 159
    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/response/EstadoDeCuentaResponse;->getImagen()[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->pdf_bytes:[B

    .line 161
    new-instance v14, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sancl.pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 165
    .local v14, "filePath":Ljava/io/File;
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v15, v14, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 166
    .local v15, "os":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->pdf_bytes:[B

    invoke-virtual {v15, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 167
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 168
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_4

    .line 176
    .end local v15    # "os":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->pdfURI:Landroid/net/Uri;

    .line 177
    const/4 v1, 0x1

    .line 233
    .end local v14    # "filePath":Ljava/io/File;
    :goto_1
    return v1

    .line 169
    .restart local v14    # "filePath":Ljava/io/File;
    :catch_0
    move-exception v13

    .line 171
    .local v13, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v13}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 191
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "filePath":Ljava/io/File;
    :catch_1
    move-exception v13

    .line 193
    .local v13, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 192
    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 196
    const/4 v1, 0x0

    goto :goto_1

    .line 172
    .end local v13    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v14    # "filePath":Ljava/io/File;
    :catch_2
    move-exception v13

    .line 174
    .local v13, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 197
    .end local v13    # "e":Ljava/io/IOException;
    .end local v14    # "filePath":Ljava/io/File;
    :catch_3
    move-exception v13

    .line 199
    .local v13, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 198
    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 203
    const/4 v1, 0x0

    goto :goto_1

    .line 183
    .end local v13    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :cond_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 185
    const v3, 0x7f05015a

    .line 184
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    const v4, 0x7f0500c0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 182
    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 188
    const/4 v1, 0x0

    goto :goto_1

    .line 204
    :catch_4
    move-exception v13

    .line 205
    .local v13, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v12, Lcl/santander/smartphone/EstadoCuentaPDF$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcl/santander/smartphone/EstadoCuentaPDF$1;-><init>(Lcl/santander/smartphone/EstadoCuentaPDF;)V

    .line 214
    .local v12, "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 215
    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 216
    .local v10, "s_cert":[Ljava/lang/String;
    invoke-virtual {v13}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 220
    const v2, 0x7f0501c4

    .line 219
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 222
    const v2, 0x7f0501c5

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 223
    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v12, v11, v1

    .line 217
    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 233
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 228
    const v2, 0x7f0501c2

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 230
    const v2, 0x7f0501c3

    .line 229
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 231
    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v12, v11, v1

    .line 225
    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_2
.end method
