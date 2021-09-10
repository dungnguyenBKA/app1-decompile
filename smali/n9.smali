.class public Ln9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln9$a;
    }
.end annotation


# instance fields
.field private final a:Ln9$a;

.field private final b:La9;

.field private final c:Lw8;

.field private final d:Z


# direct methods
.method public constructor <init>(Ln9$a;La9;Lw8;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln9;->a:Ln9$a;

    .line 3
    iput-object p2, p0, Ln9;->b:La9;

    .line 4
    iput-object p3, p0, Ln9;->c:Lw8;

    .line 5
    iput-boolean p4, p0, Ln9;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ln9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9;->a:Ln9$a;

    return-object v0
.end method

.method public b()La9;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9;->b:La9;

    return-object v0
.end method

.method public c()Lw8;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9;->c:Lw8;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln9;->d:Z

    return v0
.end method
