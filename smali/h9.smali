.class public Lh9;
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

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf9;Ly8;ZZ)V
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
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lh9;->b:Lf9;

    .line 4
    iput-object p3, p0, Lh9;->c:Ly8;

    .line 5
    iput-boolean p4, p0, Lh9;->d:Z

    .line 6
    iput-boolean p5, p0, Lh9;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 1

    .line 1
    new-instance v0, Le7;

    invoke-direct {v0, p1, p2, p0}, Le7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lh9;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh9;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lf9;
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
    iget-object v0, p0, Lh9;->b:Lf9;

    return-object v0
.end method

.method public d()Ly8;
    .locals 1

    .line 1
    iget-object v0, p0, Lh9;->c:Ly8;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh9;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh9;->d:Z

    return v0
.end method
