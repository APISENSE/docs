---
layout: post
title: Memory
---

> Handle operation on memory sensor.

Usage
-----

`memory` keyword is needed to instanciate this sting.

    var memory = require('memory');


Data accessors
--------------

- [active](#active)
- [activeanon](#activeanon)
- [activefile](#activefile)
- [anonpages](#anonpages)
- [bounce](#bounce)
- [buffers](#buffers)
- [cached](#cached)
- [commitlimit](#commitlimit)
- [committedas](#committedas)
- [dirty](#dirty)
- [highfree](#highfree)
- [hightotal](#hightotal)
- [inactive](#inactive)
- [inactiveanon](#inactiveanon)
- [inactivefile](#inactivefile)
- [kernelstack](#kernelstack)
- [lowfree](#lowfree)
- [lowtotal](#lowtotal)
- [mapped](#mapped)
- [memfree](#memfree)
- [memtotal](#memtotal)
- [mlocked](#mlocked)
- [nfsunstable](#nfsunstable)
- [pagetables](#pagetables)
- [shmem](#shmem)
- [slab](#slab)
- [sreclaimable](#sreclaimable)
- [sunreclaimable](#sunreclaimable)
- [swapcached](#swapcached)
- [swapfree](#swapfree)
- [swaptotal](#swaptotal)
- [timestamp](#timestamp)
- [unevictable](#unevictable)
- [vmallocchunck](#vmallocchunck)
- [vmalloctotal](#vmalloctotal)
- [vmallocused](#vmallocused)
- [writeback](#writeback)
- [writebacktmp](#writebacktmp)

Methods
-------

- [data](#data)

Full Example
------------

    var memory = require('memory');
    var recorder = require('recorder');

    var dataResult = memory.data();


    recorder.save({
        'active' : memory.active(),
        'activeanon' : memory.activeanon(),
        'activefile' : memory.activefile(),
        'anonpages' : memory.anonpages(),
        'bounce' : memory.bounce(),
        'buffers' : memory.buffers(),
        'cached' : memory.cached(),
        'commitlimit' : memory.commitlimit(),
        'committedas' : memory.committedas(),
        'dirty' : memory.dirty(),
        'highfree' : memory.highfree(),
        'hightotal' : memory.hightotal(),
        'inactive' : memory.inactive(),
        'inactiveanon' : memory.inactiveanon(),
        'inactivefile' : memory.inactivefile(),
        'kernelstack' : memory.kernelstack(),
        'lowfree' : memory.lowfree(),
        'lowtotal' : memory.lowtotal(),
        'mapped' : memory.mapped(),
        'memfree' : memory.memfree(),
        'memtotal' : memory.memtotal(),
        'mlocked' : memory.mlocked(),
        'nfsunstable' : memory.nfsunstable(),
        'pagetables' : memory.pagetables(),
        'shmem' : memory.shmem(),
        'slab' : memory.slab(),
        'sreclaimable' : memory.sreclaimable(),
        'sunreclaimable' : memory.sunreclaimable(),
        'swapcached' : memory.swapcached(),
        'swapfree' : memory.swapfree(),
        'swaptotal' : memory.swaptotal(),
        'timestamp' : memory.timestamp(),
        'unevictable' : memory.unevictable(),
        'vmallocchunck' : memory.vmallocchunck(),
        'vmalloctotal' : memory.vmalloctotal(),
        'vmallocused' : memory.vmallocused(),
        'writeback' : memory.writeback(),
        'writebacktmp' : memory.writebacktmp(),
        'json' : memory.data()
    });


---


active
======

> Retrieve the The amount of memory, in kibibytes, that has been used more recently and is usually not reclaimed unless absolutely necessary..

    active();

Parameters
----------

- None.

Return
------

- __active__ : Integer, The amount of memory, in kibibytes, that has been used more recently and is usually not reclaimed unless absolutely necessary.

activeanon
==========

> Retrieve the The amount of anonymous and tmpfs/shmem memory, in kibibytes, that is in active use, or was in active use since the last time the system moved something to swap..

    activeanon();

Parameters
----------

- None.

Return
------

- __activeanon__ : Integer, The amount of anonymous and tmpfs/shmem memory, in kibibytes, that is in active use, or was in active use since the last time the system moved something to swap.

activefile
==========

> Retrieve the The amount of file cache memory, in kibibytes, that is in active use, or was in active use since the last time the system reclaimed memory..

    activefile();

Parameters
----------

- None.

Return
------

- __activefile__ : Integer, The amount of file cache memory, in kibibytes, that is in active use, or was in active use since the last time the system reclaimed memory.

anonpages
=========

> Retrieve the The total amount of memory, in kibibytes, used by pages that are not backed by files and are mapped into userspace page tables..

    anonpages();

Parameters
----------

- None.

Return
------

- __anonpages__ : Integer, The total amount of memory, in kibibytes, used by pages that are not backed by files and are mapped into userspace page tables.

bounce
======

> Retrieve the The amount of memory, in kibibytes, used for the block device "bounce buffers"..

    bounce();

Parameters
----------

- None.

Return
------

- __bounce__ : Integer, The amount of memory, in kibibytes, used for the block device "bounce buffers".

buffers
=======

> Retrieve the The amount, in kibibytes, of temporary storage for raw disk blocks..

    buffers();

Parameters
----------

- None.

Return
------

- __buffers__ : Integer, The amount, in kibibytes, of temporary storage for raw disk blocks.

cached
======

> Retrieve the The amount of physical RAM, in kibibytes, used as cache memory..

    cached();

Parameters
----------

- None.

Return
------

- __cached__ : Integer, The amount of physical RAM, in kibibytes, used as cache memory.

commitlimit
===========

> Retrieve the The total amount of memory currently available to be allocated on the system based on the overcommit ratio (vm.overcommit_ratio). This limit is only adhered to if strict overcommit accounting is enabled (mode 2 in vm.overcommit_memory)..

    commitlimit();

Parameters
----------

- None.

Return
------

- __commitlimit__ : Integer, The total amount of memory currently available to be allocated on the system based on the overcommit ratio (vm.overcommit_ratio). This limit is only adhered to if strict overcommit accounting is enabled (mode 2 in vm.overcommit_memory).

committedas
===========

> Retrieve the The total amount of memory, in kibibytes, estimated to complete the workload. This value represents the worst case scenario value, and also includes swap memory..

    committedas();

Parameters
----------

- None.

Return
------

- __committedas__ : Integer, The total amount of memory, in kibibytes, estimated to complete the workload. This value represents the worst case scenario value, and also includes swap memory.

dirty
=====

> Retrieve the The total amount of memory, in kibibytes, waiting to be written back to the disk..

    dirty();

Parameters
----------

- None.

Return
------

- __dirty__ : Integer, The total amount of memory, in kibibytes, waiting to be written back to the disk.

highfree
========

> Retrieve the Amount of free highmem..

    highfree();

Parameters
----------

- None.

Return
------

- __highfree__ : Integer, Amount of free highmem.

hightotal
=========

> Retrieve the Total amount of highmem..

    hightotal();

Parameters
----------

- None.

Return
------

- __hightotal__ : Integer, Total amount of highmem.

inactive
========

> Retrieve the The amount of memory, in kibibytes, that has been used less recently and is more eligible to be reclaimed for other purposes..

    inactive();

Parameters
----------

- None.

Return
------

- __inactive__ : Integer, The amount of memory, in kibibytes, that has been used less recently and is more eligible to be reclaimed for other purposes.

inactiveanon
============

> Retrieve the The amount of anonymous and tmpfs/shmem memory, in kibibytes, that is a candidate for eviction..

    inactiveanon();

Parameters
----------

- None.

Return
------

- __inactiveanon__ : Integer, The amount of anonymous and tmpfs/shmem memory, in kibibytes, that is a candidate for eviction.

inactivefile
============

> Retrieve the The amount of file cache memory, in kibibytes, that is newly loaded from the disk, or is a candidate for reclaiming..

    inactivefile();

Parameters
----------

- None.

Return
------

- __inactivefile__ : Integer, The amount of file cache memory, in kibibytes, that is newly loaded from the disk, or is a candidate for reclaiming.

kernelstack
===========

> Retrieve the The amount of memory, in kibibytes, used by the kernel stack allocations done for each task in the system..

    kernelstack();

Parameters
----------

- None.

Return
------

- __kernelstack__ : Integer, The amount of memory, in kibibytes, used by the kernel stack allocations done for each task in the system.

lowfree
=======

> Retrieve the Amount of free lowmem..

    lowfree();

Parameters
----------

- None.

Return
------

- __lowfree__ : Integer, Amount of free lowmem.

lowtotal
========

> Retrieve the Total amount of lowmem..

    lowtotal();

Parameters
----------

- None.

Return
------

- __lowtotal__ : Integer, Total amount of lowmem.

mapped
======

> Retrieve the The memory, in kibibytes, used for files that have been mmaped, such as libraries..

    mapped();

Parameters
----------

- None.

Return
------

- __mapped__ : Integer, The memory, in kibibytes, used for files that have been mmaped, such as libraries.

memfree
=======

> Retrieve the The amount of physical RAM, in kibibytes, left unused by the system..

    memfree();

Parameters
----------

- None.

Return
------

- __memfree__ : Integer, The amount of physical RAM, in kibibytes, left unused by the system.

memtotal
========

> Retrieve the Total amount of usable RAM, in kibibytes, which is physical RAM minus a number of reserved bits and the kernel binary code..

    memtotal();

Parameters
----------

- None.

Return
------

- __memtotal__ : Integer, Total amount of usable RAM, in kibibytes, which is physical RAM minus a number of reserved bits and the kernel binary code.

mlocked
=======

> Retrieve the The total amount of memory, in kibibytes, that is not evictable because it is locked into memory by user programs..

    mlocked();

Parameters
----------

- None.

Return
------

- __mlocked__ : Integer, The total amount of memory, in kibibytes, that is not evictable because it is locked into memory by user programs.

nfsunstable
===========

> Retrieve the The amount, in kibibytes, of NFS pages sent to the server but not yet committed to the stable storage..

    nfsunstable();

Parameters
----------

- None.

Return
------

- __nfsunstable__ : Integer, The amount, in kibibytes, of NFS pages sent to the server but not yet committed to the stable storage.

pagetables
==========

> Retrieve the The total amount of memory, in kibibytes, dedicated to the lowest page table level..

    pagetables();

Parameters
----------

- None.

Return
------

- __pagetables__ : Integer, The total amount of memory, in kibibytes, dedicated to the lowest page table level.

shmem
=====

> Retrieve the The total amount of memory, in kibibytes, used by shared memory (shmem) and tmpfs..

    shmem();

Parameters
----------

- None.

Return
------

- __shmem__ : Integer, The total amount of memory, in kibibytes, used by shared memory (shmem) and tmpfs.

slab
====

> Retrieve the The total amount of memory, in kibibytes, used by the kernel to cache data structures for its own use..

    slab();

Parameters
----------

- None.

Return
------

- __slab__ : Integer, The total amount of memory, in kibibytes, used by the kernel to cache data structures for its own use.

sreclaimable
============

> Retrieve the The part of Slab that can be reclaimed, such as caches..

    sreclaimable();

Parameters
----------

- None.

Return
------

- __sreclaimable__ : Integer, The part of Slab that can be reclaimed, such as caches.

sunreclaimable
==============

> Retrieve the The part of Slab that cannot be reclaimed even when lacking memory..

    sunreclaimable();

Parameters
----------

- None.

Return
------

- __sunreclaimable__ : Integer, The part of Slab that cannot be reclaimed even when lacking memory.

swapcached
==========

> Retrieve the The amount of memory, in kibibytes, that has once been moved into swap, then back into the main memory, but still also remains in the swapfile. This saves I/O, because the memory does not need to be moved into swap again..

    swapcached();

Parameters
----------

- None.

Return
------

- __swapcached__ : Integer, The amount of memory, in kibibytes, that has once been moved into swap, then back into the main memory, but still also remains in the swapfile. This saves I/O, because the memory does not need to be moved into swap again.

swapfree
========

> Retrieve the The total amount of swap free, in kibibytes..

    swapfree();

Parameters
----------

- None.

Return
------

- __swapfree__ : Integer, The total amount of swap free, in kibibytes.

swaptotal
=========

> Retrieve the The total amount of swap available, in kibibytes..

    swaptotal();

Parameters
----------

- None.

Return
------

- __swaptotal__ : Integer, The total amount of swap available, in kibibytes.

timestamp
=========

> Retrieve the represents the time of the operation..

    timestamp();

Parameters
----------

- None.

Return
------

- __timestamp__ : Long, represents the time of the operation.

unevictable
===========

> Retrieve the The amount of memory, in kibibytes, discovered by the pageout code, that is not evictable because it is locked into memory by user programs..

    unevictable();

Parameters
----------

- None.

Return
------

- __unevictable__ : Integer, The amount of memory, in kibibytes, discovered by the pageout code, that is not evictable because it is locked into memory by user programs.

vmallocchunck
=============

> Retrieve the The largest contiguous block of memory, in kibibytes, of available virtual address space..

    vmallocchunck();

Parameters
----------

- None.

Return
------

- __vmallocchunck__ : Integer, The largest contiguous block of memory, in kibibytes, of available virtual address space.

vmalloctotal
============

> Retrieve the The total amount of memory, in kibibytes, of total allocated virtual address space..

    vmalloctotal();

Parameters
----------

- None.

Return
------

- __vmalloctotal__ : Integer, The total amount of memory, in kibibytes, of total allocated virtual address space.

vmallocused
===========

> Retrieve the The total amount of memory, in kibibytes, of used virtual address space..

    vmallocused();

Parameters
----------

- None.

Return
------

- __vmallocused__ : Integer, The total amount of memory, in kibibytes, of used virtual address space.

writeback
=========

> Retrieve the The total amount of memory, in kibibytes, actively being written back to the disk..

    writeback();

Parameters
----------

- None.

Return
------

- __writeback__ : Integer, The total amount of memory, in kibibytes, actively being written back to the disk.

writebacktmp
============

> Retrieve the The amount of memory, in kibibytes, used by FUSE for temporary writeback buffers..

    writebacktmp();

Parameters
----------

- None.

Return
------

- __writebacktmp__ : Integer, The amount of memory, in kibibytes, used by FUSE for temporary writeback buffers.




data
====

> Returns every available seed.

    data();

Parameters
----------

- None.
 
Returns
-------
- [MemoryData](memoryData.html)
 
