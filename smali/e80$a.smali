.class Le80$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La70;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj60;Lz80;)Lz60;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj60;",
            "Lz80<",
            "TT;>;)",
            "Lz60<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lz80;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 2
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 5
    :goto_0
    invoke-static {p2}, Lz80;->get(Ljava/lang/reflect/Type;)Lz80;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj60;->e(Lz80;)Lz60;

    move-result-object v0

    .line 6
    new-instance v1, Le80;

    .line 7
    invoke-static {p2}, Ld70;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Le80;-><init>(Lj60;Lz60;Ljava/lang/Class;)V

    return-object v1
.end method
