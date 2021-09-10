.class Lcom/google/firebase/crashlytics/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvy$b;


# instance fields
.field private a:Lez;

.field private b:Lez;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "Analytics listener received message. ID: %d, Extras: %s"

    .line 3
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Laz;->h(Ljava/lang/String;)V

    const-string p1, "name"

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "params"

    .line 6
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "_o"

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clx"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->a:Lez;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/a;->b:Lez;

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v0, p1, p2}, Lez;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Lez;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/a;->b:Lez;

    return-void
.end method

.method public c(Lez;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/a;->a:Lez;

    return-void
.end method
