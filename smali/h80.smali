.class public final Lh80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La70;


# instance fields
.field private final b:Lj70;


# direct methods
.method public constructor <init>(Lj70;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh80;->b:Lj70;

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
    invoke-virtual {p2}, Lz80;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lb70;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb70;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lh80;->b:Lj70;

    invoke-virtual {p0, v1, p1, p2, v0}, Lh80;->b(Lj70;Lj60;Lz80;Lb70;)Lz60;

    move-result-object p1

    return-object p1
.end method

.method b(Lj70;Lj60;Lz80;Lb70;)Lz60;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj70;",
            "Lj60;",
            "Lz80<",
            "*>;",
            "Lb70;",
            ")",
            "Lz60<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lb70;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lz80;->get(Ljava/lang/Class;)Lz80;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj70;->a(Lz80;)Lw70;

    move-result-object p1

    invoke-interface {p1}, Lw70;->a()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lz60;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lz60;

    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, p1, La70;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, La70;

    invoke-interface {p1, p2, p3}, La70;->a(Lj60;Lz80;)Lz60;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Lw60;

    if-nez v0, :cond_3

    instance-of v1, p1, Lo60;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "Invalid attempt to bind an instance of "

    invoke-static {p4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lz80;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 9
    move-object v0, p1

    check-cast v0, Lw60;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 10
    :goto_1
    instance-of v0, p1, Lo60;

    if-eqz v0, :cond_5

    .line 11
    move-object v1, p1

    check-cast v1, Lo60;

    :cond_5
    move-object v4, v1

    .line 12
    new-instance p1, Lq80;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lq80;-><init>(Lw60;Lo60;Lj60;Lz80;La70;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p4}, Lb70;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 14
    invoke-virtual {p1}, Lz60;->a()Lz60;

    move-result-object p1

    :cond_6
    return-object p1
.end method
