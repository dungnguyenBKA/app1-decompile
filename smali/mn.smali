.class public Lmn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Path;

.field private d:Z

.field private e:Lhq;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmn;->a:I

    .line 4
    iput p2, p0, Lmn;->b:I

    .line 5
    iput-boolean p3, p0, Lmn;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lmn;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lmn;->a:I

    return v0
.end method

.method public c()Landroid/graphics/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Lmn;->c:Landroid/graphics/Path;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lmn;->b:I

    const-string v1, "/"

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/camerasideas/collagemaker/activity/CollageMakerApplication;->b()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lmn;->b:I

    invoke-static {v0, v2}, Lc2;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lmn;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lmn;->f:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    const-string v3, "."

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lhq;
    .locals 1

    .line 1
    iget-object v0, p0, Lmn;->e:Lhq;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmn;->d:Z

    return v0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmn;->b:I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmn;->a:I

    return-void
.end method

.method public i(Landroid/graphics/Path;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmn;->c:Landroid/graphics/Path;

    return-void
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmn;->d:Z

    return-void
.end method

.method public k(Lhq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmn;->e:Lhq;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmn;->f:Ljava/lang/String;

    return-void
.end method
