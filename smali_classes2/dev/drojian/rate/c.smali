.class public Ldev/drojian/rate/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lbd0;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ldev/drojian/rate/c;->a:Lbd0;

    .line 3
    new-instance v0, Lbd0;

    invoke-direct {v0}, Lbd0;-><init>()V

    iput-object v0, p0, Ldev/drojian/rate/c;->a:Lbd0;

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 5
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "iw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "fa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ur"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v2, 0x0

    .line 8
    :goto_0
    iput-boolean v2, v0, Lbd0;->a:Z

    .line 9
    iget-object v0, p0, Ldev/drojian/rate/c;->a:Lbd0;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 11
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    .line 12
    :cond_2
    iput-boolean v1, v0, Lbd0;->b:Z

    .line 13
    iget-object v0, p0, Ldev/drojian/rate/c;->a:Lbd0;

    iput-boolean p2, v0, Lbd0;->e:Z

    .line 14
    iput-boolean p3, v0, Lbd0;->c:Z

    const-string p2, "https://play.google.com/store/apps/details?id="

    .line 15
    invoke-static {p2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lbd0;->f:Ljava/lang/String;

    .line 16
    iget-object p2, p0, Ldev/drojian/rate/c;->a:Lbd0;

    const-string p3, "com.android.vending"

    iput-object p3, p2, Lbd0;->g:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0e0087

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lbd0;->d:Ljava/lang/String;

    return-void
.end method

.method public static b(Landroid/content/Context;Lbd0;)V
    .locals 3

    const-string v0, "android.intent.action.VIEW"

    .line 1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lbd0;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    iget-object v2, p1, Lbd0;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v2, p1, Lbd0;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object p1, p1, Lbd0;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/drojian/rate/c;->a:Lbd0;

    iput-boolean p1, v0, Lbd0;->i:Z

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/drojian/rate/c;->a:Lbd0;

    iput-boolean p1, v0, Lbd0;->h:Z

    return-void
.end method

.method public d(Landroid/content/Context;Ldd0;)V
    .locals 2

    .line 1
    new-instance v0, Ldev/drojian/rate/b;

    invoke-direct {v0}, Ldev/drojian/rate/b;-><init>()V

    .line 2
    iget-object v1, p0, Ldev/drojian/rate/c;->a:Lbd0;

    invoke-virtual {v0, p1, v1, p2}, Ldev/drojian/rate/a;->h(Landroid/content/Context;Lbd0;Ldd0;)V

    return-void
.end method
