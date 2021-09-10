.class public Lq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lf9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ly8;

.field private final d:Lu8;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf9;Ly8;Lu8;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Ly8;",
            "Lu8;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lq9;->b:Lf9;

    .line 4
    iput-object p3, p0, Lq9;->c:Ly8;

    .line 5
    iput-object p4, p0, Lq9;->d:Lu8;

    .line 6
    iput-boolean p5, p0, Lq9;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 1

    .line 1
    new-instance v0, Ln7;

    invoke-direct {v0, p1, p2, p0}, Ln7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lq9;)V

    return-object v0
.end method

.method public b()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lq9;->d:Lu8;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq9;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lf9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf9<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq9;->b:Lf9;

    return-object v0
.end method

.method public e()Ly8;
    .locals 1

    .line 1
    iget-object v0, p0, Lq9;->c:Ly8;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq9;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RectangleShape{position="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq9;->b:Lf9;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq9;->c:Ly8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
