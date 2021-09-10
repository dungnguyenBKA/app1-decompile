.class public Lcom/caverock/androidsvg/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/b$a;,
        Lcom/caverock/androidsvg/b$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/caverock/androidsvg/b;

.field public static final d:Lcom/caverock/androidsvg/b;


# instance fields
.field private a:Lcom/caverock/androidsvg/b$a;

.field private b:Lcom/caverock/androidsvg/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/b;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->b:Lcom/caverock/androidsvg/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/b;-><init>(Lcom/caverock/androidsvg/b$a;Lcom/caverock/androidsvg/b$b;)V

    sput-object v0, Lcom/caverock/androidsvg/b;->c:Lcom/caverock/androidsvg/b;

    .line 2
    new-instance v0, Lcom/caverock/androidsvg/b;

    sget-object v1, Lcom/caverock/androidsvg/b$a;->g:Lcom/caverock/androidsvg/b$a;

    sget-object v2, Lcom/caverock/androidsvg/b$b;->b:Lcom/caverock/androidsvg/b$b;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/b;-><init>(Lcom/caverock/androidsvg/b$a;Lcom/caverock/androidsvg/b$b;)V

    sput-object v0, Lcom/caverock/androidsvg/b;->d:Lcom/caverock/androidsvg/b;

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/b$a;Lcom/caverock/androidsvg/b$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/caverock/androidsvg/b;->a:Lcom/caverock/androidsvg/b$a;

    .line 3
    iput-object p2, p0, Lcom/caverock/androidsvg/b;->b:Lcom/caverock/androidsvg/b$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/caverock/androidsvg/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->a:Lcom/caverock/androidsvg/b$a;

    return-object v0
.end method

.method public b()Lcom/caverock/androidsvg/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/b;->b:Lcom/caverock/androidsvg/b$b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lcom/caverock/androidsvg/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/caverock/androidsvg/b;

    .line 3
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->a:Lcom/caverock/androidsvg/b$a;

    iget-object v3, p1, Lcom/caverock/androidsvg/b;->a:Lcom/caverock/androidsvg/b$a;

    if-eq v2, v3, :cond_3

    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/b;->b:Lcom/caverock/androidsvg/b$b;

    iget-object p1, p1, Lcom/caverock/androidsvg/b;->b:Lcom/caverock/androidsvg/b$b;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method
