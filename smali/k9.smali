.class public Lk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# instance fields
.field private final a:Lm9;

.field private final b:Landroid/graphics/Path$FillType;

.field private final c:Lv8;

.field private final d:Lw8;

.field private final e:Ly8;

.field private final f:Ly8;

.field private final g:Ljava/lang/String;

.field private final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lm9;Landroid/graphics/Path$FillType;Lv8;Lw8;Ly8;Ly8;Lu8;Lu8;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lk9;->a:Lm9;

    .line 3
    iput-object p3, p0, Lk9;->b:Landroid/graphics/Path$FillType;

    .line 4
    iput-object p4, p0, Lk9;->c:Lv8;

    .line 5
    iput-object p5, p0, Lk9;->d:Lw8;

    .line 6
    iput-object p6, p0, Lk9;->e:Ly8;

    .line 7
    iput-object p7, p0, Lk9;->f:Ly8;

    .line 8
    iput-object p1, p0, Lk9;->g:Ljava/lang/String;

    .line 9
    iput-boolean p10, p0, Lk9;->h:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 1

    .line 1
    new-instance v0, Lg7;

    invoke-direct {v0, p1, p2, p0}, Lg7;-><init>(Lcom/airbnb/lottie/g;Lz9;Lk9;)V

    return-object v0
.end method

.method public b()Ly8;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->f:Ly8;

    return-object v0
.end method

.method public c()Landroid/graphics/Path$FillType;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->b:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public d()Lv8;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->c:Lv8;

    return-object v0
.end method

.method public e()Lm9;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->a:Lm9;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lw8;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->d:Lw8;

    return-object v0
.end method

.method public h()Ly8;
    .locals 1

    .line 1
    iget-object v0, p0, Lk9;->e:Ly8;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk9;->h:Z

    return v0
.end method
