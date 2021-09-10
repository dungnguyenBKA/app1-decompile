.class Lcom/github/chrisbanes/photoview/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/chrisbanes/photoview/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/chrisbanes/photoview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/chrisbanes/photoview/c;


# direct methods
.method constructor <init>(Lcom/github/chrisbanes/photoview/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/c;->c(Lcom/github/chrisbanes/photoview/c;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/c;->d(Lcom/github/chrisbanes/photoview/c;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/c;->g(Lcom/github/chrisbanes/photoview/c;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 5
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {p1}, Lcom/github/chrisbanes/photoview/c;->k(Lcom/github/chrisbanes/photoview/c;)V

    :cond_2
    return-void
.end method
