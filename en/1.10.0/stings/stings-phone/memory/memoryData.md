---
layout: post
title: MemoryData
---

> Contains all information about the current memory.

Attributes
----------
- active (Integer) : The amount of memory, in kibibytes, that has been used more recently and is usually not reclaimed unless absolutely necessary.
- activeanon (Integer) : The amount of anonymous and tmpfs/shmem memory, in kibibytes, that is in active use, or was in active use since the last time the system moved something to swap.
- activefile (Integer) : The amount of file cache memory, in kibibytes, that is in active use, or was in active use since the last time the system reclaimed memory.
- anonpages (Integer) : The total amount of memory, in kibibytes, used by pages that are not backed by files and are mapped into userspace page tables.
- bounce (Integer) : The amount of memory, in kibibytes, used for the block device "bounce buffers".
- buffers (Integer) : The amount, in kibibytes, of temporary storage for raw disk blocks.
- cached (Integer) : The amount of physical RAM, in kibibytes, used as cache memory.
- commitlimit (Integer) : The total amount of memory currently available to be allocated on the system based on the overcommit ratio (vm.overcommit_ratio). This limit is only adhered to if strict overcommit accounting is enabled (mode 2 in vm.overcommit_memory).
- committedas (Integer) : The total amount of memory, in kibibytes, estimated to complete the workload. This value represents the worst case scenario value, and also includes swap memory.
- dirty (Integer) : The total amount of memory, in kibibytes, waiting to be written back to the disk.
- highfree (Integer) : Amount of free highmem.
- hightotal (Integer) : Total amount of highmem.
- inactive (Integer) : The amount of memory, in kibibytes, that has been used less recently and is more eligible to be reclaimed for other purposes.
- inactiveanon (Integer) : The amount of anonymous and tmpfs/shmem memory, in kibibytes, that is a candidate for eviction.
- inactivefile (Integer) : The amount of file cache memory, in kibibytes, that is newly loaded from the disk, or is a candidate for reclaiming.
- kernelstack (Integer) : The amount of memory, in kibibytes, used by the kernel stack allocations done for each task in the system.
- lowfree (Integer) : Amount of free lowmem.
- lowtotal (Integer) : Total amount of lowmem.
- mapped (Integer) : The memory, in kibibytes, used for files that have been mmaped, such as libraries.
- memfree (Integer) : The amount of physical RAM, in kibibytes, left unused by the system.
- memtotal (Integer) : Total amount of usable RAM, in kibibytes, which is physical RAM minus a number of reserved bits and the kernel binary code.
- mlocked (Integer) : The total amount of memory, in kibibytes, that is not evictable because it is locked into memory by user programs.
- nfsunstable (Integer) : The amount, in kibibytes, of NFS pages sent to the server but not yet committed to the stable storage.
- pagetables (Integer) : The total amount of memory, in kibibytes, dedicated to the lowest page table level.
- shmem (Integer) : The total amount of memory, in kibibytes, used by shared memory (shmem) and tmpfs.
- slab (Integer) : The total amount of memory, in kibibytes, used by the kernel to cache data structures for its own use.
- sreclaimable (Integer) : The part of Slab that can be reclaimed, such as caches.
- sunreclaimable (Integer) : The part of Slab that cannot be reclaimed even when lacking memory.
- swapcached (Integer) : The amount of memory, in kibibytes, that has once been moved into swap, then back into the main memory, but still also remains in the swapfile. This saves I/O, because the memory does not need to be moved into swap again.
- swapfree (Integer) : The total amount of swap free, in kibibytes.
- swaptotal (Integer) : The total amount of swap available, in kibibytes.
- timestamp (Long) : represents the time of the operation.
- unevictable (Integer) : The amount of memory, in kibibytes, discovered by the pageout code, that is not evictable because it is locked into memory by user programs.
- vmallocchunck (Integer) : The largest contiguous block of memory, in kibibytes, of available virtual address space.
- vmalloctotal (Integer) : The total amount of memory, in kibibytes, of total allocated virtual address space.
- vmallocused (Integer) : The total amount of memory, in kibibytes, of used virtual address space.
- writeback (Integer) : The total amount of memory, in kibibytes, actively being written back to the disk.
- writebacktmp (Integer) : The amount of memory, in kibibytes, used by FUSE for temporary writeback buffers.
