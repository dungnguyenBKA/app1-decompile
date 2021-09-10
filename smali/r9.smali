.class public Lr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lu8;

.field private final c:Lu8;

.field private final d:Le9;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lu8;Lu8;Le9;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lr9;->b:Lu8;

    .line 4
    iput-object p3, p0, Lr9;->c:Lu8;

    .line 5
    iput-object p4, p0, Lr9;->d:Le9;

    .line 6
    iput-boolean p5, p0, Lr9;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 1

    .line 1
    new-instance v0, Lo7;

    invoke-direct {v0, p1, p2, p0}, Lo7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lr9;)V

    return-object v0
.end method

.method public b()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9;->b:Lu8;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lu8;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9;->c:Lu8;

    return-object v0
.end method

.method public e()Le9;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9;->d:Le9;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lr9;->e:Z

    return v0
.end method
