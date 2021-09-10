.class public Lx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx9$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lx9$a;

.field private final c:Lu8;

.field private final d:Lu8;

.field private final e:Lu8;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx9$a;Lu8;Lu8;Lu8;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lx9;->b:Lx9$a;

    .line 4
    iput-object p3, p0, Lx9;->c:Lu8;

    .line 5
    iput-object p4, p0, Lx9;->d:Lu8;

    .line 6
    iput-object p5, p0, Lx9;->e:Lu8;

    .line 7
    iput-boolean p6, p0, Lx9;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 0

    .line 1
    new-instance p1, Lr7;

    invoke-direct {p1, p2, p0}, Lr7;-><init>(Lz9;Lx9;)V

    return-object p1
.end method

.method public b()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lx9;->d:Lu8;

    return-object v0
.end method

.method public c()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lx9;->e:Lu8;

    return-object v0
.end method

.method public d()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lx9;->c:Lu8;

    return-object v0
.end method

.method public e()Lx9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lx9;->b:Lx9$a;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lx9;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Trim Path: {start: "

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lx9;->c:Lu8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx9;->d:Lu8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx9;->e:Lu8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
