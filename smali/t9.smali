.class public Lt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# instance fields
.field private final a:Z

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Ljava/lang/String;

.field private final d:Lt8;

.field private final e:Lw8;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lt8;Lw8;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt9;->c:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lt9;->a:Z

    .line 4
    iput-object p3, p0, Lt9;->b:Landroid/graphics/Path$FillType;

    .line 5
    iput-object p4, p0, Lt9;->d:Lt8;

    .line 6
    iput-object p5, p0, Lt9;->e:Lw8;

    .line 7
    iput-boolean p6, p0, Lt9;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 1

    .line 1
    new-instance v0, Lf7;

    invoke-direct {v0, p1, p2, p0}, Lf7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lt9;)V

    return-object v0
.end method

.method public b()Lt8;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9;->d:Lt8;

    return-object v0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lw8;
    .locals 1

    .line 1
    iget-object v0, p0, Lt9;->e:Lw8;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt9;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ShapeFill{color=, fillEnabled="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lt9;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
