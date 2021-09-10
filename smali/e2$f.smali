.class public Le2$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le2$f;->a:Landroid/net/Uri;

    .line 4
    iput p2, p0, Le2$f;->b:I

    .line 5
    iput p3, p0, Le2$f;->c:I

    .line 6
    iput-boolean p4, p0, Le2$f;->d:Z

    .line 7
    iput p5, p0, Le2$f;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le2$f;->e:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le2$f;->b:I

    return v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le2$f;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Le2$f;->c:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le2$f;->d:Z

    return v0
.end method
