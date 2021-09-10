.class public abstract Lcom/camerasideas/collagemaker/appdata/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a(Landroid/os/Bundle;Ljava/lang/String;Z)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "KEY_ENABLED_SHOW_BTN_HOME"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/camerasideas/collagemaker/appdata/a;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "KEY_FILE_PATHS"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppBaseBundle"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    const-string v0, "filePaths size="

    .line 3
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method public static d(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "KEY_HAS_POPUP_RATE"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/camerasideas/collagemaker/appdata/a;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "HAS_REPORT_FEEDBACK"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/camerasideas/collagemaker/appdata/a;->a(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "IMAGE_PATH_FROM_CAMERA"

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
