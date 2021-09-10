.class public Len;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwm$d;


# static fields
.field private static d:Len;

.field private static e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lwm$d;

.field private c:Lwm;


# direct methods
.method private constructor <init>(Lwm$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Len;->b:Lwm$d;

    return-void
.end method

.method public static a(Lwm$d;)Len;
    .locals 1

    .line 1
    sget-object v0, Len;->d:Len;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Len;

    invoke-direct {v0, p0}, Len;-><init>(Lwm$d;)V

    sput-object v0, Len;->d:Len;

    .line 3
    :cond_0
    sget-object p0, Len;->d:Len;

    return-object p0
.end method

.method public static e()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Len;->e:Ljava/util/TreeMap;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    .line 1
    sget-object v0, Len;->e:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public b(Ljava/util/TreeMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/camerasideas/collagemaker/appdata/MediaFileInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "finished pre browse photo "

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanMediaManager"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-object p1, Len;->e:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Len;->c:Lwm;

    .line 4
    iget-object v0, p0, Len;->b:Lwm$d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lwm$d;->b(Ljava/util/TreeMap;)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Len;->b:Lwm$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lwm$d;->c(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Len;->b:Lwm$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lwm$d;->d()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "ScanMediaManager"

    const-string v1, "interruptScan pre browse photo"

    .line 1
    invoke-static {v0, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Len;->c:Lwm;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Len;->c:Lwm;

    :cond_0
    return-void
.end method

.method public h(Lwm$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Len;->b:Lwm$d;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ScanMediaManager"

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 2
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "startScan pre browse photo"

    .line 3
    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Len;->c:Lwm;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lwm;

    .line 6
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p0, v2}, Lwm;-><init>(Landroid/content/Context;Ljava/lang/String;Lwm$d;Z)V

    iput-object v0, p0, Len;->c:Lwm;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method
