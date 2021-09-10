.class Lm80;
.super Ln80$b;
.source "SourceFile"


# instance fields
.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lz60;

.field final synthetic g:Lj60;

.field final synthetic h:Lz80;

.field final synthetic i:Z


# direct methods
.method constructor <init>(Ln80;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLz60;Lj60;Lz80;Z)V
    .locals 0

    .line 1
    iput-object p5, p0, Lm80;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lm80;->e:Z

    iput-object p7, p0, Lm80;->f:Lz60;

    iput-object p8, p0, Lm80;->g:Lj60;

    iput-object p9, p0, Lm80;->h:Lz80;

    iput-boolean p10, p0, Lm80;->i:Z

    invoke-direct {p0, p2, p3, p4}, Ln80$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(La90;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm80;->f:Lz60;

    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lm80;->i:Z

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lm80;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method b(Lc90;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm80;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lm80;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm80;->f:Lz60;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lr80;

    iget-object v1, p0, Lm80;->g:Lj60;

    iget-object v2, p0, Lm80;->f:Lz60;

    iget-object v3, p0, Lm80;->h:Lz80;

    invoke-virtual {v3}, Lz80;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lr80;-><init>(Lj60;Lz60;Ljava/lang/reflect/Type;)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln80$b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lm80;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
