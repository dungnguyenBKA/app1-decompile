.class public final Lcom/google/android/gms/measurement/internal/n3;
.super Lcom/google/android/gms/measurement/internal/s8;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b9;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/s8;-><init>(Lcom/google/android/gms/measurement/internal/b9;)V

    return-void
.end method


# virtual methods
.method protected final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/s8;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j4;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final m(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    const v1, 0xea60

    .line 6
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/j4;->x()Lcom/google/android/gms/measurement/internal/e;

    const v1, 0xee48

    .line 8
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 9
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to obtain HTTP connection"

    .line 12
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
